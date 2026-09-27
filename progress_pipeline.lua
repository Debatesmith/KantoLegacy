-- Kanto Legacy's embedded Stage 1-5 runtime for the opening-to-Mt. Moon slice.
-- The JSON/Python implementation in kanto_save_research_20260920 remains the
-- development oracle; this module is the release-path resolver, planner and
-- in-memory writer used before SaveData serializes the new FireRed slot.

local Flags = require("src.core.game3.scripting.flags")
local Bag = require("src.core.game3.bag")

local Pipeline = {}

local SLICE_ID = "KANTO_OPENING_TO_MT_MOON_ENTRANCE"
local SUPPORTED_STARTERS = { bulbasaur = true, squirtle = true, charmander = true, pikachu = true }
local RIVAL_FOR = { bulbasaur = "charmander", squirtle = "bulbasaur", charmander = "squirtle" }
local YELLOW_FIRERED_BRANCH = "squirtle"

local TRAINERS = {
  TRAINER_YOUNGSTER_BEN = 89, TRAINER_YOUNGSTER_CALVIN = 90,
  TRAINER_BUG_CATCHER_RICK = 102, TRAINER_BUG_CATCHER_DOUG = 103,
  TRAINER_BUG_CATCHER_SAMMY = 104, TRAINER_BUG_CATCHER_COLTON = 105,
  TRAINER_BUG_CATCHER_GREG = 106, TRAINER_BUG_CATCHER_JAMES = 107,
  TRAINER_LASS_JANICE = 116, TRAINER_LASS_SALLY = 117,
  TRAINER_LASS_ROBIN = 118, TRAINER_CAMPER_LIAM = 142,
  TRAINER_RIVAL_OAKS_LAB_SQUIRTLE = 326,
  TRAINER_RIVAL_OAKS_LAB_BULBASAUR = 327,
  TRAINER_RIVAL_OAKS_LAB_CHARMANDER = 328,
  TRAINER_RIVAL_ROUTE22_EARLY_SQUIRTLE = 329,
  TRAINER_RIVAL_ROUTE22_EARLY_BULBASAUR = 330,
  TRAINER_RIVAL_ROUTE22_EARLY_CHARMANDER = 331,
  TRAINER_LEADER_BROCK = 414,
  TRAINER_BUG_CATCHER_ANTHONY = 531,
  TRAINER_BUG_CATCHER_CHARLIE = 532,
}

local ITEMS = { ITEM_HM05 = 343, ITEM_OAKS_PARCEL = 349,
  ITEM_TM39 = 327, ITEM_TOWN_MAP = 361, ITEM_TEACHY_TV = 366 }

-- Each entry is canonical event id, evidence mode, then source evidence refs.
-- A source flag map is closed-world: a missing decoded bit is reliable absence.
local EVIDENCE = {
  {"VISIT.PALLET_TOWN","visit","visited.PALLET_TOWN"},
  {"PALLET.HOME_INTRO","derived","flags.EVENT_FOLLOWED_OAK_INTO_LAB","flags.EVENT_GOT_STARTER"},
  {"PALLET.OAK_ENCOUNTER","exact","flags.EVENT_OAK_APPEARED_IN_PALLET","flags.EVENT_FOLLOWED_OAK_INTO_LAB"},
  {"PALLET.FOLLOWED_OAK_TO_LAB","exact","flags.EVENT_FOLLOWED_OAK_INTO_LAB","flags.EVENT_FOLLOWED_OAK_INTO_LAB_2"},
  {"PALLET.STARTER_ACQUIRED","exact","flags.EVENT_GOT_STARTER"},
  {"PALLET.STARTER_CHOICE","choice"}, {"PALLET.RIVAL_STARTER_BRANCH","choice"},
  {"PALLET.LAB_RIVAL_BATTLE","exact","flags.EVENT_BATTLED_RIVAL_IN_OAKS_LAB"},
  {"VIRIDIAN_MART.PARCEL_ACQUIRED","exact","flags.EVENT_GOT_OAKS_PARCEL"},
  {"PALLET.PARCEL_DELIVERED","exact","flags.EVENT_OAK_GOT_PARCEL"},
  {"PALLET.POKEDEX_RECEIVED","exact","flags.EVENT_GOT_POKEDEX"},
  {"PALLET.OAK_POKEBALLS_GIFT","exact","flags.EVENT_GOT_POKEBALLS_FROM_OAK"},
  {"PALLET.TOWN_MAP_GIFT","exact","flags.EVENT_GOT_TOWN_MAP"},
  {"PALLET.SIGN_TUTORIAL","target_default"},
  {"ROUTE1.POTION_SAMPLE","exact","flags.EVENT_GOT_POTION_SAMPLE"},
  {"VISIT.VIRIDIAN_CITY","visit","visited.VIRIDIAN_CITY"},
  {"VIRIDIAN.OLD_MAN_GATE","derived","flags.EVENT_GOT_POKEDEX"},
  {"VIRIDIAN.CATCHING_TUTORIAL","unresolved"},
  {"VIRIDIAN.NORTH_ACCESS","derived","flags.EVENT_GOT_POKEDEX"},
  {"VIRIDIAN.TEACHY_TV_GIFT","target_default"},
  {"VIRIDIAN.TM42_GIFT","exact","flags.EVENT_GOT_TM42"},
  {"VIRIDIAN.CUT_TREE_POTION_PICKUP","target_default"},
  {"VIRIDIAN.POKECENTER_TUTORIAL","target_default"},
  {"ROUTE22.EARLY_RIVAL_BATTLE","exact","flags.EVENT_1ST_ROUTE22_RIVAL_BATTLE"},
  {"ROUTE2.MOON_STONE_PICKUP","exact","itemsTaken.ROUTE_2_obj_1"},
  {"ROUTE2.HP_UP_PICKUP","exact","itemsTaken.ROUTE_2_obj_2"},
  {"ROUTE2.MR_MIME_TRADE","unresolved"},
  {"ROUTE2.FLASH_GIFT","exact","flags.EVENT_GOT_HM05"},
  {"FOREST.TRAINER_SHARED_0","exact","flags.EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0","defeatedTrainers.VIRIDIAN_FOREST_obj_2"},
  {"FOREST.TRAINER_SHARED_1","exact","flags.EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1","defeatedTrainers.VIRIDIAN_FOREST_obj_3"},
  {"FOREST.TRAINER_SHARED_2","exact","flags.EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2","defeatedTrainers.VIRIDIAN_FOREST_obj_4"},
  {"FOREST.TRAINER_FIRERED_ONLY_ANTHONY","yellow_only","flags.EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_3","defeatedTrainers.VIRIDIAN_FOREST_obj_5"},
  {"FOREST.TRAINER_FIRERED_ONLY_CHARLIE","yellow_only","flags.EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_4","defeatedTrainers.VIRIDIAN_FOREST_obj_6"},
  {"FOREST.ANTIDOTE_PICKUP","versioned_item","VIRIDIAN_FOREST_obj_5","VIRIDIAN_FOREST_obj_7"},
  {"FOREST.POTION_PICKUP","versioned_item","VIRIDIAN_FOREST_obj_6","VIRIDIAN_FOREST_obj_8"},
  {"FOREST.POKE_BALL_PICKUP","versioned_item","VIRIDIAN_FOREST_obj_7","VIRIDIAN_FOREST_obj_9"},
  {"FOREST.POTION2_PICKUP","target_default"},
  {"FOREST.HIDDEN_POTION_PICKUP","target_default"},
  {"FOREST.HIDDEN_ANTIDOTE_PICKUP","target_default"},
  {"VISIT.PEWTER_CITY","visit","visited.PEWTER_CITY"},
  {"PEWTER.GYM_GUIDE_ESCORT","derived","flags.EVENT_BEAT_BROCK"},
  {"PEWTER.MUSEUM_ADMISSION","exact","flags.EVENT_BOUGHT_MUSEUM_TICKET"},
  {"PEWTER.OLD_AMBER_GIFT","exact","flags.EVENT_GOT_OLD_AMBER"},
  {"PEWTER.MUSEUM_GUIDE_STATE","unresolved"},
  {"PEWTER.HIDDEN_POKE_BALL","target_default"},
  {"PEWTER.SEISMIC_TOSS_TUTOR","target_default"},
  {"PEWTER_GYM.TRAINER_SHARED_0","exact","flags.EVENT_BEAT_PEWTER_GYM_TRAINER_0","defeatedTrainers.PEWTER_GYM_obj_1"},
  {"PEWTER_GYM.BROCK_BATTLE","exact","flags.EVENT_BEAT_BROCK"},
  {"PEWTER_GYM.BOULDER_BADGE","exact","flags.EVENT_BEAT_BROCK"},
  {"PEWTER_GYM.TM_REWARD","exact","flags.EVENT_GOT_TM34"},
  {"PEWTER.RUNNING_SHOES_FOLLOWUP","target_default"},
  {"ROUTE3.TRAINER_SHARED_0","exact","flags.EVENT_BEAT_ROUTE_3_TRAINER_0","defeatedTrainers.ROUTE_3_obj_2"},
  {"ROUTE3.TRAINER_SHARED_1","exact","flags.EVENT_BEAT_ROUTE_3_TRAINER_1","defeatedTrainers.ROUTE_3_obj_3"},
  {"ROUTE3.TRAINER_SHARED_2","exact","flags.EVENT_BEAT_ROUTE_3_TRAINER_2","defeatedTrainers.ROUTE_3_obj_4"},
  {"ROUTE3.TRAINER_SHARED_3","exact","flags.EVENT_BEAT_ROUTE_3_TRAINER_3","defeatedTrainers.ROUTE_3_obj_5"},
  {"ROUTE3.TRAINER_SHARED_4","exact","flags.EVENT_BEAT_ROUTE_3_TRAINER_4","defeatedTrainers.ROUTE_3_obj_6"},
  {"ROUTE3.TRAINER_SHARED_5","exact","flags.EVENT_BEAT_ROUTE_3_TRAINER_5","defeatedTrainers.ROUTE_3_obj_7"},
  {"ROUTE3.TRAINER_SHARED_6","exact","flags.EVENT_BEAT_ROUTE_3_TRAINER_6","defeatedTrainers.ROUTE_3_obj_8"},
  {"ROUTE3.TRAINER_SHARED_7","exact","flags.EVENT_BEAT_ROUTE_3_TRAINER_7","defeatedTrainers.ROUTE_3_obj_9"},
  {"ROUTE3.HIDDEN_ORAN_BERRY","target_default"},
  {"ROUTE4_WEST.POKECENTER_HEAL_ANCHOR","exact","lastHeal.map=ROUTE_4_POKECENTER","lastHeal.map=ROUTE_4_POKEMON_CENTER"},
  {"ROUTE4_WEST.MAGIKARP_PURCHASE","exact","flags.EVENT_BOUGHT_MAGIKARP"},
  {"ROUTE4_WEST.HIDDEN_PERSIM_BERRY","target_default"},
  {"ROUTE4_WEST.MT_MOON_ENTRANCE_REACHED","derived","visited.ROUTE_4","visited.MT_MOON_1F"},
}

local AVAILABLE_AFTER = {
  ["PALLET.STARTER_ACQUIRED"]="PALLET.FOLLOWED_OAK_TO_LAB",
  ["PALLET.LAB_RIVAL_BATTLE"]="PALLET.STARTER_ACQUIRED",
  ["VIRIDIAN_MART.PARCEL_ACQUIRED"]="PALLET.STARTER_ACQUIRED",
  ["PALLET.PARCEL_DELIVERED"]="VIRIDIAN_MART.PARCEL_ACQUIRED",
  ["PALLET.POKEDEX_RECEIVED"]="PALLET.PARCEL_DELIVERED",
  ["PALLET.OAK_POKEBALLS_GIFT"]="PALLET.POKEDEX_RECEIVED",
  ["PALLET.TOWN_MAP_GIFT"]="PALLET.POKEDEX_RECEIVED",
  ["ROUTE22.EARLY_RIVAL_BATTLE"]="PALLET.POKEDEX_RECEIVED",
  ["PEWTER_GYM.TM_REWARD"]="PEWTER_GYM.BROCK_BATTLE",
}

local function lookup(snapshot, expression)
  local path, expected = expression:match("^([^=]+)=(.+)$")
  path = path or expression
  local node = snapshot
  for part in path:gmatch("[^.]+") do
    if type(node) ~= "table" then return false, nil end
    node = node[part]
    if node == nil then return false, nil end
  end
  if expected then return tostring(node) == expected, node end
  return node and true or false, node
end

local RAW_PLAYER_STARTER_BYTE = 10692 -- Lua string index for SRAM wPlayerStarter (0x29C3)
local RAW_RIVAL_STARTER_BYTE = 10690  -- Lua string index for SRAM wRivalStarter (0x29C1)
local RAW_PLAYER_STARTERS = { [153]="bulbasaur", [176]="charmander", [177]="squirtle" }
local RAW_RIVAL_TO_PLAYER = { [176]="bulbasaur", [177]="charmander", [153]="squirtle" }
local STARTER_FAMILIES = {
  bulbasaur={BULBASAUR=true,IVYSAUR=true,VENUSAUR=true},
  charmander={CHARMANDER=true,CHARMELEON=true,CHARIZARD=true},
  squirtle={SQUIRTLE=true,WARTORTLE=true,BLASTOISE=true},
}

local function singletonOwnedStarterFamily(snapshot)
  local owned = snapshot.pokedex and snapshot.pokedex.owned or {}
  local candidates = {}
  for starter, family in pairs(STARTER_FAMILIES) do
    for species in pairs(family) do
      if owned[species] then candidates[#candidates + 1] = starter; break end
    end
  end
  if #candidates ~= 1 then return nil end
  local wanted, player = candidates[1], snapshot.player or {}
  local function isOriginal(mon)
    if type(mon) ~= "table" or not STARTER_FAMILIES[wanted][mon.species] then return false end
    return tostring(mon.ot or "") == tostring(player.name or "")
      and tonumber(mon.otId) == tonumber(player.id)
  end
  for _, mon in pairs(snapshot.party or {}) do if isOriginal(mon) then return wanted end end
  for _, box in pairs(snapshot.boxes or {}) do
    for _, mon in pairs(box or {}) do if isOriginal(mon) then return wanted end end
  end
  return nil
end

local function sourceStarter(snapshot, version)
  if version == "yellow" then return "pikachu", "version.yellow", "certain" end
  local explicit = snapshot.starter and snapshot.starter.player
  if type(explicit) == "string" then explicit = explicit:lower() end
  if SUPPORTED_STARTERS[explicit] then return explicit, "starter.player", "certain" end
  local flags = snapshot.flags or {}
  if flags.EVENT_CHOSE_BULBASAUR then return "bulbasaur", "flags.EVENT_CHOSE_BULBASAUR", "certain" end
  if flags.EVENT_CHOSE_SQUIRTLE then return "squirtle", "flags.EVENT_CHOSE_SQUIRTLE", "certain" end
  if flags.EVENT_CHOSE_CHARMANDER then return "charmander", "flags.EVENT_CHOSE_CHARMANDER", "certain" end

  -- Older Gen1Recomp save.lua conversions did not always expose the
  -- EVENT_CHOSE_* aliases. They retain the original 32 KiB SRAM image in
  -- rawImport, including the canonical wPlayerStarter/wRivalStarter bytes.
  -- This is durable source evidence, unlike guessing from party or Pokédex.
  local raw = snapshot.rawImport
  if type(raw) == "string" and #raw == 32768 then
    local starter = RAW_PLAYER_STARTERS[raw:byte(RAW_PLAYER_STARTER_BYTE)]
    if starter then return starter, "rawImport.wPlayerStarter", "certain" end
    starter = RAW_RIVAL_TO_PLAYER[raw:byte(RAW_RIVAL_STARTER_BYTE)]
    if starter then return starter, "rawImport.wRivalStarter", "certain" end
  end
  local legacy = singletonOwnedStarterFamily(snapshot)
  if legacy then
    return legacy, "pokedex.owned.singletonStarterFamily+collection.originalTrainer", "strong"
  end
  return nil
end

function Pipeline.resolve(snapshot, sourceVersion)
  local version = tostring(sourceVersion or snapshot.version or "unknown"):lower()
  local out = { schemaVersion="1.0.0", sliceId=SLICE_ID,
    provenance={sourceGame=version,resolverVersion="lua-1.0.0"},
    events={}, conflicts={}, summary={} }
  for _, rule in ipairs(EVIDENCE) do
    local id, mode = rule[1], rule[2]
    local rec = { status="unresolved", confidence="none", evidence={} }
    if mode == "target_default" then
      rec.status, rec.confidence = "not_applicable", "certain"
    elseif mode == "unresolved" then
      -- Kept unresolved as evidence; the planner may choose a documented,
      -- replayable target-default policy for optional content.
    elseif mode == "yellow_only" and version ~= "yellow" then
      rec.status, rec.confidence = "not_applicable", "certain"
    elseif mode == "choice" then
      local starter, starterEvidence, starterConfidence = sourceStarter(snapshot, version)
      local acquired = snapshot.flags and snapshot.flags.EVENT_GOT_STARTER
      if id == "PALLET.RIVAL_STARTER_BRANCH" then
        rec.value = version == "yellow" and "eevee" or (starter and RIVAL_FOR[starter])
      else rec.value = starter end
      if acquired and rec.value then
        rec.status, rec.confidence = "completed", starterConfidence or "certain"
        rec.evidence[1] = starterEvidence
      end
    else
      local refs = {}
      if mode == "versioned_item" then
        refs[1] = "itemsTaken." .. (version == "yellow" and rule[4] or rule[3])
      else
        for i=3,#rule do refs[#refs+1] = rule[i] end
      end
      for _, ref in ipairs(refs) do
        if lookup(snapshot, ref) then rec.evidence[#rec.evidence+1] = ref end
      end
      if #rec.evidence > 0 then
        rec.status = "completed"
        rec.confidence = (mode == "visit" or mode == "derived") and "strong" or "certain"
      elseif (mode == "exact" or mode == "visit" or mode == "versioned_item" or mode == "yellow_only") and #refs > 0 then
        rec.status, rec.confidence = "unseen", "certain"
      end
    end
    local dep = AVAILABLE_AFTER[id]
    if rec.status == "unresolved" and dep and out.events[dep]
        and out.events[dep].status == "completed" then
      rec.status, rec.confidence = "available", "strong"
    elseif rec.status == "unseen" and dep and out.events[dep]
        and out.events[dep].status == "completed" then
      rec.status, rec.confidence = "available", "strong"
    end
    out.events[id] = rec
  end
  local pairsToCheck = {
    {"PALLET.STARTER_CHOICE","PALLET.STARTER_ACQUIRED"},
    {"PALLET.RIVAL_STARTER_BRANCH","PALLET.STARTER_ACQUIRED"},
    {"PALLET.PARCEL_DELIVERED","VIRIDIAN_MART.PARCEL_ACQUIRED"},
    {"PEWTER_GYM.BOULDER_BADGE","PEWTER_GYM.BROCK_BATTLE"},
  }
  for _, pair in ipairs(pairsToCheck) do
    if out.events[pair[1]].status == "completed" and out.events[pair[2]].status ~= "completed" then
      out.conflicts[#out.conflicts+1] = pair[1] .. " completed without " .. pair[2]
    end
  end
  local counts = {}
  for _, rec in pairs(out.events) do counts[rec.status]=(counts[rec.status] or 0)+1 end
  out.summary = { eventCount=#EVIDENCE, statusCounts=counts, conflictCount=#out.conflicts }
  return out
end

local DIRECT = {
  ["VISIT.PALLET_TOWN"]={"flag","FLAG_WORLD_MAP_PALLET_TOWN"},
  ["PALLET.HOME_INTRO"]={"var","VAR_MAP_SCENE_PALLET_TOWN_PLAYERS_HOUSE_2F",1,0},
  ["ROUTE1.POTION_SAMPLE"]={"flag","FLAG_GOT_POTION_ON_ROUTE_1"},
  ["VISIT.VIRIDIAN_CITY"]={"flag","FLAG_WORLD_MAP_VIRIDIAN_CITY"},
  ["VIRIDIAN.TM42_GIFT"]={"flag","FLAG_TUTOR_DREAM_EATER"},
  ["VIRIDIAN.CUT_TREE_POTION_PICKUP"]={"flag","FLAG_HIDE_VIRIDIAN_CITY_POTION"},
  ["ROUTE2.MOON_STONE_PICKUP"]={"flag","FLAG_HIDE_ROUTE2_ETHER"},
  ["ROUTE2.HP_UP_PICKUP"]={"flag","FLAG_HIDE_ROUTE2_PARALYZE_HEAL"},
  ["ROUTE2.MR_MIME_TRADE"]={"flag","FLAG_DID_MIMIEN_TRADE","safe_available"},
  ["ROUTE2.FLASH_GIFT"]={"flag_item","FLAG_GOT_HM05","ITEM_HM05"},
  ["FOREST.TRAINER_SHARED_0"]={"trainer","TRAINER_BUG_CATCHER_RICK"},
  ["FOREST.TRAINER_SHARED_1"]={"trainer","TRAINER_BUG_CATCHER_DOUG"},
  ["FOREST.TRAINER_SHARED_2"]={"trainer","TRAINER_BUG_CATCHER_SAMMY"},
  ["FOREST.TRAINER_FIRERED_ONLY_ANTHONY"]={"trainer","TRAINER_BUG_CATCHER_ANTHONY"},
  ["FOREST.TRAINER_FIRERED_ONLY_CHARLIE"]={"trainer","TRAINER_BUG_CATCHER_CHARLIE"},
  ["FOREST.ANTIDOTE_PICKUP"]={"flag","FLAG_HIDE_VIRIDIAN_FOREST_ANTIDOTE"},
  ["FOREST.POTION_PICKUP"]={"flag","FLAG_HIDE_VIRIDIAN_FOREST_POTION"},
  ["FOREST.POKE_BALL_PICKUP"]={"flag","FLAG_HIDE_VIRIDIAN_FOREST_POKE_BALL"},
  ["FOREST.POTION2_PICKUP"]={"flag","FLAG_HIDE_VIRIDIAN_FOREST_POTION_2"},
  ["FOREST.HIDDEN_POTION_PICKUP"]={"flag","FLAG_HIDDEN_ITEM_VIRIDIAN_FOREST_POTION"},
  ["FOREST.HIDDEN_ANTIDOTE_PICKUP"]={"flag","FLAG_HIDDEN_ITEM_VIRIDIAN_FOREST_ANTIDOTE"},
  ["VISIT.PEWTER_CITY"]={"flag","FLAG_WORLD_MAP_PEWTER_CITY"},
  ["PEWTER.OLD_AMBER_GIFT"]={"flags","FLAG_GOT_OLD_AMBER","FLAG_HIDE_OLD_AMBER"},
  ["PEWTER.MUSEUM_GUIDE_STATE"]={"flag","FLAG_HIDE_PEWTER_MUSEUM_GUIDE","safe_available"},
  ["PEWTER.HIDDEN_POKE_BALL"]={"flag","FLAG_HIDDEN_ITEM_PEWTER_CITY_POKE_BALL"},
  ["PEWTER.SEISMIC_TOSS_TUTOR"]={"flag","FLAG_TUTOR_SEISMIC_TOSS"},
  ["PEWTER_GYM.TRAINER_SHARED_0"]={"trainer","TRAINER_CAMPER_LIAM"},
  ["ROUTE3.TRAINER_SHARED_0"]={"trainer","TRAINER_BUG_CATCHER_COLTON"},
  ["ROUTE3.TRAINER_SHARED_1"]={"trainer","TRAINER_YOUNGSTER_BEN"},
  ["ROUTE3.TRAINER_SHARED_2"]={"trainer","TRAINER_LASS_JANICE"},
  ["ROUTE3.TRAINER_SHARED_3"]={"trainer","TRAINER_BUG_CATCHER_GREG"},
  ["ROUTE3.TRAINER_SHARED_4"]={"trainer","TRAINER_LASS_SALLY"},
  ["ROUTE3.TRAINER_SHARED_5"]={"trainer","TRAINER_YOUNGSTER_CALVIN"},
  ["ROUTE3.TRAINER_SHARED_6"]={"trainer","TRAINER_BUG_CATCHER_JAMES"},
  ["ROUTE3.TRAINER_SHARED_7"]={"trainer","TRAINER_LASS_ROBIN"},
  ["ROUTE3.HIDDEN_ORAN_BERRY"]={"flag","FLAG_HIDDEN_ITEM_ROUTE3_ORAN_BERRY"},
  ["ROUTE4_WEST.MAGIKARP_PURCHASE"]={"flag","FLAG_BOUGHT_MAGIKARP"},
  ["ROUTE4_WEST.HIDDEN_PERSIM_BERRY"]={"flag","FLAG_HIDDEN_ITEM_ROUTE4_PERSIM_BERRY"},
}

local function completed(events,id) return events[id] and events[id].status == "completed" end
local function inStates(events,id,...)
  local wanted = {}; for i=1,select("#",...) do wanted[select(i,...)] = true end
  return events[id] and wanted[events[id].status] or false
end

function Pipeline.plan(canonical)
  local e, operations, blockers, audits = canonical.events, {}, {}, {}
  local bySymbol = {}
  local function op(kind,symbol,value,owner)
    local prior = bySymbol[symbol]
    if prior then
      if prior.owner == owner then
        -- A reducer may advance through several established story milestones.
        -- Publish only its final desired state for verification.
        prior.op, prior.value = kind, value
      elseif prior.op ~= kind or prior.value ~= value then
        blockers[#blockers+1]={code="CONTRADICTORY_WRITES",message="Different reducers target " .. symbol}
      end
      return
    end
    local operation = {op=kind,symbol=symbol,value=value,owner=owner}
    bySymbol[symbol] = operation
    operations[#operations+1] = operation
  end
  local function flag(symbol,on,owner) op(on and "set_flag" or "clear_flag",symbol,nil,owner) end
  local function var(symbol,value,owner) op("set_var",symbol,value,owner) end
  local function trainer(symbol,on,owner) op(on and "set_trainer_defeated" or "clear_trainer_defeated",symbol,nil,owner) end
  local function item(kind,symbol,owner) op(kind,symbol,1,owner) end
  local function audit(code,message) audits[#audits+1]={code=code,message=message} end

  for _, conflict in ipairs(canonical.conflicts or {}) do blockers[#blockers+1]={code="CANONICAL_CONFLICT",message=conflict} end

  -- PALLET_STORY reducer.
  local owner="reducer:PALLET_STORY"
  if inStates(e,"PALLET.OAK_ENCOUNTER","unseen","available") then
    var("VAR_MAP_SCENE_PALLET_TOWN_OAK",0,owner); var("VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB",0,owner)
  elseif completed(e,"PALLET.OAK_ENCOUNTER") and not completed(e,"PALLET.FOLLOWED_OAK_TO_LAB") then
    var("VAR_MAP_SCENE_PALLET_TOWN_OAK",0,owner); var("VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB",0,owner)
    audit("NORMALIZED_OAK_ESCORT","Transient Oak escort rolled back to its replayable trigger.")
  end
  if completed(e,"PALLET.FOLLOWED_OAK_TO_LAB") then
    var("VAR_MAP_SCENE_PALLET_TOWN_OAK",3,owner); flag("FLAG_HIDE_OAK_IN_PALLET_TOWN",true,owner)
    flag("FLAG_HIDE_OAK_IN_HIS_LAB",false,owner); flag("FLAG_VISITED_OAKS_LAB",true,owner)
    if not completed(e,"PALLET.STARTER_ACQUIRED") then var("VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB",1,owner) end
  end
  if completed(e,"PALLET.STARTER_ACQUIRED") then flag("FLAG_SYS_POKEMON_GET",true,owner) end
  if completed(e,"PALLET.STARTER_ACQUIRED") and not completed(e,"PALLET.LAB_RIVAL_BATTLE") then
    var("VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB",3,owner)
  end
  if completed(e,"PALLET.LAB_RIVAL_BATTLE") then
    flag("FLAG_BEAT_RIVAL_IN_OAKS_LAB",true,owner)
    if not completed(e,"VIRIDIAN_MART.PARCEL_ACQUIRED") then var("VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB",4,owner) end
  end
  if completed(e,"VIRIDIAN_MART.PARCEL_ACQUIRED") and not completed(e,"PALLET.PARCEL_DELIVERED") then
    var("VAR_MAP_SCENE_VIRIDIAN_CITY_MART",1,owner); var("VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB",5,owner)
    item("ensure_item","ITEM_OAKS_PARCEL",owner)
  elseif completed(e,"PALLET.PARCEL_DELIVERED") and not completed(e,"PALLET.POKEDEX_RECEIVED") then
    var("VAR_MAP_SCENE_VIRIDIAN_CITY_MART",2,owner); var("VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB",5,owner)
    item("remove_item","ITEM_OAKS_PARCEL",owner)
  end
  if completed(e,"PALLET.POKEDEX_RECEIVED") then
    var("VAR_MAP_SCENE_VIRIDIAN_CITY_MART",2,owner); var("VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB",6,owner)
    flag("FLAG_SYS_POKEMON_GET",true,owner); flag("FLAG_SYS_POKEDEX_GET",true,owner)
    item("remove_item","ITEM_OAKS_PARCEL",owner)
  end
  if completed(e,"PALLET.TOWN_MAP_GIFT") then
    var("VAR_MAP_SCENE_PALLET_TOWN_RIVALS_HOUSE",2,owner); item("ensure_item","ITEM_TOWN_MAP",owner)
  elseif completed(e,"PALLET.POKEDEX_RECEIVED") then var("VAR_MAP_SCENE_PALLET_TOWN_RIVALS_HOUSE",1,owner) end

  local starter=e["PALLET.STARTER_CHOICE"].value
  local starterBranch=starter=="pikachu" and YELLOW_FIRERED_BRANCH or starter
  if completed(e,"PALLET.STARTER_ACQUIRED") and not SUPPORTED_STARTERS[starter] then
    blockers[#blockers+1]={code="UNSUPPORTED_STARTER_BRANCH",message="No native FireRed branch exists for "..tostring(starter or "unresolved").." yet."}
  elseif SUPPORTED_STARTERS[starter] then
    local sv={bulbasaur=0,squirtle=1,charmander=2}; var("VAR_STARTER_MON",sv[starterBranch],owner)
    local hides={bulbasaur={"FLAG_HIDE_BULBASAUR_BALL","FLAG_HIDE_CHARMANDER_BALL"},squirtle={"FLAG_HIDE_SQUIRTLE_BALL","FLAG_HIDE_BULBASAUR_BALL"},charmander={"FLAG_HIDE_CHARMANDER_BALL","FLAG_HIDE_SQUIRTLE_BALL"}}
    for _,symbol in ipairs(hides[starterBranch]) do flag(symbol,true,owner) end
    if completed(e,"PALLET.LAB_RIVAL_BATTLE") then
      local rivalTrainer={bulbasaur="TRAINER_RIVAL_OAKS_LAB_CHARMANDER",squirtle="TRAINER_RIVAL_OAKS_LAB_BULBASAUR",charmander="TRAINER_RIVAL_OAKS_LAB_SQUIRTLE"}
      trainer(rivalTrainer[starterBranch],true,owner)
    end
    local rival=e["PALLET.RIVAL_STARTER_BRANCH"].value
    if starter=="pikachu" then
      if rival~="eevee" then blockers[#blockers+1]={code="RIVAL_BRANCH_MISMATCH",message="Yellow Pikachu requires the durable Eevee rival branch."}
      else audit("YELLOW_STARTER_COMPATIBILITY","Pikachu retained; FireRed Squirtle/Venusaur branch routes native rival scripts without granting a replacement starter.") end
    elseif completed(e,"PALLET.STARTER_ACQUIRED") and rival ~= RIVAL_FOR[starter] then
      blockers[#blockers+1]={code="RIVAL_BRANCH_MISMATCH",message="Source rival branch does not match the FireRed starter branch."}
    end
  end

  -- FireRed-only presentation reducers deliberately leave their content playable.
  owner="reducer:PALLET_SIGN_PRESENTATION"
  if not completed(e,"PALLET.STARTER_ACQUIRED") then var("VAR_MAP_SCENE_PALLET_TOWN_SIGN_LADY",0,owner); flag("FLAG_PALLET_LADY_NOT_BLOCKING_SIGN",false,owner)
  else var("VAR_MAP_SCENE_PALLET_TOWN_SIGN_LADY",1,owner); flag("FLAG_PALLET_LADY_NOT_BLOCKING_SIGN",true,owner) end

  owner="reducer:VIRIDIAN_OLD_MAN"
  if not completed(e,"PALLET.POKEDEX_RECEIVED") then var("VAR_MAP_SCENE_VIRIDIAN_CITY_OLD_MAN",0,owner)
  else var("VAR_MAP_SCENE_VIRIDIAN_CITY_OLD_MAN",1,owner); audit("TARGET_CONTENT_AVAILABLE","Old Man tutorial and Teachy TV remain playable.") end

  owner="reducer:POKEMON_CENTER_TEALA"
  var("VAR_MAP_SCENE_POKEMON_CENTER_TEALA",completed(e,"PALLET.POKEDEX_RECEIVED") and 1 or 0,owner)

  owner="reducer:ROUTE22_EARLY_RIVAL"
  if not completed(e,"PALLET.POKEDEX_RECEIVED") then var("VAR_MAP_SCENE_ROUTE22",0,owner)
  elseif not completed(e,"ROUTE22.EARLY_RIVAL_BATTLE") then var("VAR_MAP_SCENE_ROUTE22",1,owner); flag("FLAG_HIDE_ROUTE_22_RIVAL",false,owner)
  else
    var("VAR_MAP_SCENE_ROUTE22",2,owner); flag("FLAG_HIDE_ROUTE_22_RIVAL",true,owner)
    local rt={bulbasaur="TRAINER_RIVAL_ROUTE22_EARLY_CHARMANDER",squirtle="TRAINER_RIVAL_ROUTE22_EARLY_BULBASAUR",charmander="TRAINER_RIVAL_ROUTE22_EARLY_SQUIRTLE"}
    if rt[starterBranch] then trainer(rt[starterBranch],true,owner) end
  end

  owner="reducer:PEWTER_BROCK"
  local brock, badge=completed(e,"PEWTER_GYM.BROCK_BATTLE"),completed(e,"PEWTER_GYM.BOULDER_BADGE")
  if brock ~= badge then blockers[#blockers+1]={code="BROCK_BADGE_ATOMICITY",message="Brock victory and Boulder Badge evidence disagree."} end
  if not brock then
    var("VAR_MAP_SCENE_PEWTER_CITY",0,owner); flag("FLAG_DEFEATED_BROCK",false,owner); flag("FLAG_BADGE01_GET",false,owner)
    flag("FLAG_HIDE_PEWTER_CITY_GYM_GUIDE",false,owner); flag("FLAG_HIDE_PEWTER_CITY_RUNNING_SHOES_GUY",true,owner)
  else
    trainer("TRAINER_LEADER_BROCK",true,owner); flag("FLAG_DEFEATED_BROCK",true,owner); flag("FLAG_BADGE01_GET",true,owner)
    var("VAR_MAP_SCENE_PEWTER_CITY",1,owner); flag("FLAG_HIDE_PEWTER_CITY_GYM_GUIDE",true,owner)
    flag("FLAG_HIDE_PEWTER_CITY_RUNNING_SHOES_GUY",false,owner); flag("FLAG_SYS_B_DASH",false,owner)
    local tmReward=completed(e,"PEWTER_GYM.TM_REWARD")
    flag("FLAG_GOT_TM39_FROM_BROCK",tmReward,owner)
    -- Current TM quantities belong exclusively to collection conversion.
  end

  -- Table-driven direct/default event materialization.
  for id, rule in pairs(DIRECT) do
    local status=e[id].status
    local on=status=="completed"
    if status=="unresolved" then
      if rule[3]=="safe_available" then on=false; audit("SAFE_AVAILABLE_DEFAULT",id.." left replayable because the source decoder exposes no durable bit.")
      else blockers[#blockers+1]={code="UNRESOLVED_DIRECT_EVENT",message=id.." has no safe target write."} end
    end
    local o="event:"..id
    if rule[1]=="flag" then flag(rule[2],on,o)
    elseif rule[1]=="flags" then flag(rule[2],on,o); flag(rule[3],on,o)
    elseif rule[1]=="var" then var(rule[2],on and rule[3] or rule[4],o)
    elseif rule[1]=="trainer" then trainer(rule[2],on,o)
    elseif rule[1]=="flag_item" then flag(rule[2],on,o); if on then item("ensure_item",rule[3],o) end end
  end
  if completed(e,"ROUTE4_WEST.POKECENTER_HEAL_ANCHOR") then
    op("set_heal_location","HEAL_LOCATION_ROUTE4",nil,"event:ROUTE4_WEST.POKECENTER_HEAL_ANCHOR")
    flag("FLAG_WORLD_MAP_ROUTE4_POKEMON_CENTER_1F",true,"event:ROUTE4_WEST.POKECENTER_HEAL_ANCHOR")
  end

  return { planVersion="lua-1.0.0", sliceId=SLICE_ID, readyToApply=#blockers==0,
    operations=operations, blockers=blockers, audits=audits,
    summary={operationCount=#operations,blockerCount=#blockers,auditCount=#audits} }
end

function Pipeline.apply(session, plan)
  if not plan.readyToApply then return nil, plan.blockers end
  local applied = 0
  for _, operation in ipairs(plan.operations) do
    local kind, symbol = operation.op, operation.symbol
    if kind == "set_flag" or kind == "clear_flag" then
      if not Flags.IDS[symbol] then return nil, "unknown FireRed flag symbol: "..symbol end
      Flags.setFlag(session,nil,symbol,kind=="set_flag")
    elseif kind == "set_var" then
      if not Flags.VAR_IDS[symbol] then return nil, "unknown FireRed var symbol: "..symbol end
      Flags.setVar(session,nil,symbol,operation.value)
    elseif kind == "set_trainer_defeated" or kind == "clear_trainer_defeated" then
      local id=TRAINERS[symbol]; if not id then return nil,"unknown FireRed trainer symbol: "..symbol end
      Flags.setTrainerDefeated(session,nil,id,kind=="set_trainer_defeated")
    elseif kind == "ensure_item" then
      local id=ITEMS[symbol]; if not id then return nil,"unknown FireRed item symbol: "..symbol end
      if not Bag.has(session.bag,id,1) and not Bag.add(session.bag,id,operation.value or 1) then
        return nil,"no room to ensure required item: "..symbol
      end
    elseif kind == "remove_item" then
      local id=ITEMS[symbol]; if not id then return nil,"unknown FireRed item symbol: "..symbol end
      if Bag.has(session.bag,id,1) then Bag.remove(session.bag,id,operation.value or 1) end
    elseif kind == "set_heal_location" and symbol == "HEAL_LOCATION_ROUTE4" then
      session.healMap,session.healX,session.healY="FR_ROUTE_4_POKEMON_CENTER_1F",7,4
    else return nil,"unsupported progress operation: "..tostring(kind) end
    applied=applied+1
  end
  for _, operation in ipairs(plan.operations) do
    local kind, symbol = operation.op, operation.symbol
    local verified = false
    if kind == "set_flag" or kind == "clear_flag" then
      verified = Flags.getFlag(session,nil,symbol) == (kind == "set_flag")
    elseif kind == "set_var" then
      verified = Flags.getVar(session,nil,symbol) == operation.value
    elseif kind == "set_trainer_defeated" or kind == "clear_trainer_defeated" then
      verified = Flags.isTrainerDefeated(session,nil,TRAINERS[symbol]) == (kind == "set_trainer_defeated")
    elseif kind == "ensure_item" then
      verified = Bag.has(session.bag,ITEMS[symbol],operation.value or 1)
    elseif kind == "remove_item" then
      verified = not Bag.has(session.bag,ITEMS[symbol],1)
    elseif kind == "set_heal_location" then
      verified = session.healMap == "FR_ROUTE_4_POKEMON_CENTER_1F" and session.healX == 7 and session.healY == 4
    end
    if not verified then return nil,"post-write verification failed: " .. symbol end
  end
  return {applied=applied,verified=true,planVersion=plan.planVersion,sliceId=plan.sliceId}
end

function Pipeline.run(session, snapshot, sourceVersion)
  local canonical=Pipeline.resolve(snapshot,sourceVersion)
  local plan=Pipeline.plan(canonical)
  if not plan.readyToApply then return nil,{canonical=canonical,plan=plan} end
  local write,err=Pipeline.apply(session,plan)
  if not write then return nil,{canonical=canonical,plan=plan,writerError=err} end
  return {canonical=canonical,plan=plan,writer=write}
end

return Pipeline

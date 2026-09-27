-- Kanto Legacy embedded Stage 1-5 runtime for Route 9 through the Poke Flute.
-- Reviewed JSON is exported into progress_pipeline_pokeflute_data.lua.

local Flags = require("src.core.game3.scripting.flags")
local Bag = require("src.core.game3.bag")

return function(data)
  assert(type(data)=="table" and type(data.evidence)=="table" and type(data.rules)=="table",
    "Poke Flute progress data is missing")

  local Pipeline={}
  local SLICE_ID="KANTO_ROUTE9_TO_POKE_FLUTE_COMPLETE"
  local SUPPORTED_STARTERS={bulbasaur=true,squirtle=true,charmander=true}
  local TRAINERS={
    TRAINER_BEAUTY_BRIDGET=265,TRAINER_BEAUTY_LORI=267,TRAINER_BEAUTY_TAMIA=266,
    TRAINER_BOSS_GIOVANNI=348,TRAINER_BUG_CATCHER_BRENT=114,TRAINER_BUG_CATCHER_CONNER=115,
    TRAINER_CAMPER_CHRIS=148,TRAINER_CAMPER_DREW=149,
    TRAINER_CHANNELER_ANGELICA=451,TRAINER_CHANNELER_CARLY=442,TRAINER_CHANNELER_EMILIA=452,
    TRAINER_CHANNELER_HOPE=443,TRAINER_CHANNELER_JANAE=450,TRAINER_CHANNELER_JENNIFER=453,
    TRAINER_CHANNELER_JODY=446,TRAINER_CHANNELER_KARINA=449,TRAINER_CHANNELER_LAUREL=445,
    TRAINER_CHANNELER_PATRICIA=441,TRAINER_CHANNELER_PAULA=444,TRAINER_CHANNELER_RUTH=448,
    TRAINER_CHANNELER_TAMMY=447,TRAINER_COOLTRAINER_MARY=402,TRAINER_GAMER_RICH=264,
    TRAINER_GAMER_STAN=262,TRAINER_HIKER_ALAN=185,TRAINER_HIKER_ALLEN=190,
    TRAINER_HIKER_BRICE=186,TRAINER_HIKER_CLARK=187,TRAINER_HIKER_DUDLEY=189,
    TRAINER_HIKER_ERIC=191,TRAINER_HIKER_JEREMY=465,TRAINER_HIKER_LENNY=192,
    TRAINER_HIKER_LUCAS=194,TRAINER_HIKER_OLIVER=193,TRAINER_HIKER_TRENT=188,
    TRAINER_LASS_ANDREA=129,TRAINER_LASS_JULIA=131,TRAINER_LASS_KAY=132,
    TRAINER_LASS_LISA=133,TRAINER_LASS_MEGAN=130,TRAINER_LASS_PAIGE=128,
    TRAINER_LEADER_ERIKA=417,TRAINER_PICNICKER_ALICIA=154,TRAINER_PICNICKER_ARIANA=475,
    TRAINER_PICNICKER_CAITLIN=155,TRAINER_PICNICKER_CAROL=157,TRAINER_PICNICKER_DANA=474,
    TRAINER_PICNICKER_HEIDI=156,TRAINER_PICNICKER_LEAH=476,TRAINER_PICNICKER_MARTHA=159,
    TRAINER_PICNICKER_SOFIA=158,TRAINER_PICNICKER_TINA=160,
    TRAINER_POKEMANIAC_ASHTON=168,TRAINER_POKEMANIAC_COOPER=164,TRAINER_POKEMANIAC_HERMAN=163,
    TRAINER_POKEMANIAC_MARK=162,TRAINER_POKEMANIAC_STEVE=165,TRAINER_POKEMANIAC_WINSTON=166,
    TRAINER_RIVAL_POKEMON_TOWER_BULBASAUR=430,TRAINER_RIVAL_POKEMON_TOWER_CHARMANDER=431,
    TRAINER_RIVAL_POKEMON_TOWER_SQUIRTLE=429,TRAINER_SUPER_NERD_AIDAN=171,
    TRAINER_SUPER_NERD_GLENN=172,TRAINER_SUPER_NERD_LESLIE=173,
  }
  for i=7,21 do TRAINERS["TRAINER_TEAM_ROCKET_GRUNT_"..i]=350+i end
  local ITEMS={ITEM_AMULET_COIN=189,ITEM_COIN_CASE=260,ITEM_EVERSTONE=195,ITEM_HM02=340,
    ITEM_LIFT_KEY=356,ITEM_POKE_FLUTE=350,ITEM_SILPH_SCOPE=359,ITEM_TEA=369,
    ITEM_TM16=304,ITEM_TM19=307,ITEM_TM20=308,ITEM_TM33=321}

  local function contains(list,wanted)
    for _,value in ipairs(list or {}) do if value==wanted then return true end end
    return false
  end
  local function scalar(value)
    if value==true then return "true" elseif value==false then return "false"
    elseif value==nil then return "null" end
    return tostring(value)
  end
  local function lookup(snapshot,expression)
    local path,expected=expression:match("^([^=]+)=(.+)$");path=path or expression
    local node=snapshot
    for part in path:gmatch("[^.]+") do
      if type(node)~="table" or node[part]==nil then return false,nil end
      node=node[part]
    end
    if expected~=nil then return scalar(node):lower()==expected:lower(),node end
    return node and true or false,node
  end
  local function refsFor(rule,version)
    local refs,seen={},{};local groups=rule.completedAny or {}
    for _,group in ipairs({groups.all or {},groups[version] or {}}) do
      for _,ref in ipairs(group) do if not seen[ref] then seen[ref]=true;refs[#refs+1]=ref end end
    end
    return refs
  end
  local function flag(snapshot,name)return lookup(snapshot,"flags."..name)end
  local function item(snapshot,name)return lookup(snapshot,"inventory."..name) or lookup(snapshot,"pcItems."..name)end
  local function partyHasMove(snapshot,wanted)
    for _,mon in pairs(snapshot.party or {}) do for _,move in pairs(mon.moves or {}) do
      if type(move)=="table" and move.id==wanted then return true end
    end end
    return false
  end
  local function record(status,confidence,value,evidence)
    local out={status=status,confidence=confidence or "certain",evidence=evidence or {}}
    if value~=nil then out.value=value end
    return out
  end

  local SPECIAL={
    ["CELADON_ARC.ROUTE9_CUT_ACCESS"]=true,["ROUTE16.FLY_HOUSE_CUT_ACCESS"]=true,
    ["POKEMON_TOWER.GHOST_GATE_ACCESS"]=true,["POKEMON_TOWER.MAROWAK_RESOLUTION"]=true,
    ["CELADON.EEVEE_GIFT"]=true,["CELADON_ARC.SAFFRON_GUARD_ACCESS"]=true,
    ["ROCKET_HIDEOUT.LIFT_KEY_REWARD"]=true,["ROCKET_HIDEOUT.B4F_DOOR_OPEN"]=true,
    ["ROUTE16.SNORLAX_BOUNDARY"]=true,["CELADON_TOWER_ARC.SNORLAX_CHOICES_UNLOCKED"]=true,
  }

  function Pipeline.resolve(snapshot,sourceVersion)
    local version=tostring(sourceVersion or snapshot.version or "unknown"):lower()
    local out={schemaVersion="1.0.0",sliceId=SLICE_ID,
      provenance={sourceGame=version,resolverVersion="lua-1.0.0"},events={},conflicts={},normalizations={}}
    for _,rule in ipairs(data.evidence.eventRules) do
      local id,mode=rule.eventId,rule.mode
      if not SPECIAL[id] then
        local rec=record("unresolved","none")
        if contains(rule.notApplicableVersions,version) then rec=record("not_applicable","certain")
        else
          local refs=refsFor(rule,version)
          for _,ref in ipairs(refs) do if lookup(snapshot,ref) then rec.evidence[#rec.evidence+1]=ref end end
          if #rec.evidence>0 then rec.status="completed";rec.confidence=(mode=="visit" or mode=="derived") and "strong" or "certain"
          else
            local pending=false
            for _,dep in ipairs(rule.pendingAfter or {}) do if out.events[dep] and out.events[dep].status=="completed" then pending=true;break end end
            local available=false
            for _,dep in ipairs(rule.availableAfter or {}) do if out.events[dep] and out.events[dep].status=="completed" then available=true;break end end
            if pending then rec=record("reward_pending","strong")
            elseif mode=="target_default" then rec=record("not_applicable","certain")
            elseif available then rec=record("available","strong")
            elseif #refs>0 then rec=record("unseen",mode=="exact" and "certain" or "strong") end
          end
        end
        out.events[id]=rec
      end
    end

    for _,id in ipairs({"CELADON_GAME_CORNER.HIDEOUT_ENTRANCE_OPEN","ROCKET_HIDEOUT.CLEARED"}) do
      if out.events[id].status=="unseen" then out.events[id].status="available" end
    end
    local later=false
    for _,id in ipairs({"VISIT.ROUTE_9","VISIT.ROUTE_10","VISIT.ROCK_TUNNEL","VISIT.LAVENDER_TOWN"}) do
      later=later or out.events[id].status=="completed"
    end
    local cutItem=item(snapshot,"HM_CUT") and true or false
    local cutUser=partyHasMove(snapshot,"CUT")
    local cutOpen=later or (cutItem and cutUser)
    local cutValue=cutOpen and "open" or (not cutItem and "blocked_without_cut" or "unknown")
    local cutStatus=cutValue=="open" and "completed" or "available"
    for _,id in ipairs({"CELADON_ARC.ROUTE9_CUT_ACCESS","ROUTE16.FLY_HOUSE_CUT_ACCESS"}) do
      out.events[id]=record(cutStatus,cutValue=="unknown" and "weak" or "strong",cutValue)
    end

    local scope=(item(snapshot,"SILPH_SCOPE") or lookup(snapshot,"itemsTaken.ROCKET_HIDEOUT_B4F_obj_8")) and true or false
    local marowak=flag(snapshot,"EVENT_BEAT_GHOST_MAROWAK") and true or false
    local rescued=(flag(snapshot,"EVENT_RESCUED_MR_FUJI") or flag(snapshot,"EVENT_RESCUED_MR_FUJI_2") or flag(snapshot,"EVENT_GOT_POKE_FLUTE")) and true or false
    if rescued and not marowak then marowak=true;out.normalizations[#out.normalizations+1]="Marowak advanced from Mr. Fuji rescue proof" end
    if marowak then
      out.events["POKEMON_TOWER.GHOST_GATE_ACCESS"]=record("completed",rescued and "inferred" or "strong",scope and "scope_ready" or "poke_doll_bypass")
      out.events["POKEMON_TOWER.MAROWAK_RESOLUTION"]=record("completed",rescued and "inferred" or "certain",scope and "battle" or "poke_doll_bypass")
    elseif scope then
      out.events["POKEMON_TOWER.GHOST_GATE_ACCESS"]=record("completed","certain","scope_ready")
      out.events["POKEMON_TOWER.MAROWAK_RESOLUTION"]=record("available","strong","battle")
    else
      out.events["POKEMON_TOWER.GHOST_GATE_ACCESS"]=record("available","strong","blocked")
      out.events["POKEMON_TOWER.MAROWAK_RESOLUTION"]=record("unseen","strong","unknown")
    end

    local eeveeRemoved=lookup(snapshot,"objectToggles.CELADON_MANSION_ROOF_HOUSE.CELADONMANSION_ROOF_HOUSE_EEVEE_POKEBALL=false")
    if eeveeRemoved then out.events["CELADON.EEVEE_GIFT"]=record("completed","certain")
    elseif out.events["VISIT.CELADON_CITY"].status=="completed" then out.events["CELADON.EEVEE_GIFT"]=record("available","strong")
    else out.events["CELADON.EEVEE_GIFT"]=record("unseen","strong") end

    local current=tostring((snapshot.player or {}).map or "")
    local saffron=(snapshot.visited or {}).SAFFRON_CITY or contains({"SAFFRON_CITY","SAFFRON_POKECENTER","COPYCATS_HOUSE_1F","COPYCATS_HOUSE_2F","SILPH_CO_1F"},current)
    out.events["CELADON_ARC.SAFFRON_GUARD_ACCESS"]=record(saffron and "completed" or "available","strong",saffron and "open" or "closed")

    local liftClaimed=(item(snapshot,"LIFT_KEY") or lookup(snapshot,"itemsTaken.ROCKET_HIDEOUT_B4F_obj_9")) and true or false
    local liftDropped=(flag(snapshot,"EVENT_ROCKET_DROPPED_LIFT_KEY") or out.events["ROCKET_HIDEOUT_B4F.TRAINER_SHARED_2"].status=="completed") and true or false
    out.events["ROCKET_HIDEOUT.LIFT_KEY_REWARD"]=record(liftClaimed and "completed" or (liftDropped and "reward_pending" or "unseen"),liftClaimed and "certain" or (liftDropped and "strong" or "certain"))
    local doorFlag=flag(snapshot,"EVENT_ROCKET_HIDEOUT_4_DOOR_UNLOCKED") and true or false
    local bothDoorGrunts=(flag(snapshot,"EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_0") and flag(snapshot,"EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_1")) and true or false
    out.events["ROCKET_HIDEOUT.B4F_DOOR_OPEN"]=record((doorFlag or bothDoorGrunts) and "completed" or "available",doorFlag and "certain" or "strong")

    local flute=(flag(snapshot,"EVENT_GOT_POKE_FLUTE") or item(snapshot,"POKE_FLUTE")) and true or false
    local r16=lookup(snapshot,"objectToggles.ROUTE_16.ROUTE16_SNORLAX=false")
    local r12=lookup(snapshot,"objectToggles.ROUTE_12.ROUTE12_SNORLAX=false")
    if r16 or r12 then
      out.events["ROUTE16.SNORLAX_BOUNDARY"]=record("unresolved","certain","unknown")
      out.conflicts[#out.conflicts+1]="At least one source Snorlax is already resolved; Slice 4 stops before both encounters."
    else out.events["ROUTE16.SNORLAX_BOUNDARY"]=record("available","strong","sleeping_untouched") end
    out.events["CELADON_TOWER_ARC.SNORLAX_CHOICES_UNLOCKED"]=record(flute and "completed" or "available","certain",flute and "open" or "blocked_without_flute")

    if flute and out.events["POKEMON_TOWER.MR_FUJI_RESCUED"].status~="completed" then
      out.events["POKEMON_TOWER.MR_FUJI_RESCUED"]=record("completed","inferred")
      out.normalizations[#out.normalizations+1]="Mr. Fuji rescue advanced from Poke Flute proof"
    end
    if out.events["POKEMON_TOWER.MR_FUJI_RESCUED"].status=="completed" then
      for i=0,2 do local id="POKEMON_TOWER_7F.ROCKET_SHARED_"..i
        if out.events[id].status~="completed" then out.events[id]=record("completed","inferred") end
      end
    end
    if out.events["CELADON_GYM.ERIKA_BATTLE"].status=="completed" and out.events["CELADON_GYM.RAINBOW_BADGE"].status~="completed" then
      out.events["CELADON_GYM.RAINBOW_BADGE"]=record("completed","inferred")
    end
    local counts={};for _,rec in pairs(out.events) do counts[rec.status]=(counts[rec.status] or 0)+1 end
    out.summary={eventCount=#data.evidence.eventRules,statusCounts=counts,conflictCount=#out.conflicts,normalizationCount=#out.normalizations}
    return out
  end

  local function suffix(id)return id:match("([^.]+)$")end
  local function trim(v)return(v:gsub("^%s+",""):gsub("%s+$",""))end
  local function splitPlain(value,sep)
    local result,start={},1
    while true do local a,b=value:find(sep,start,true);if not a then result[#result+1]=value:sub(start);break end
      result[#result+1]=value:sub(start,a-1);start=b+1 end
    return result
  end
  local function termValue(term,aliases,context)
    term=trim(term)
    if term=="collection payload converted" then return context.eeveePayloadConverted==true end
    local name,value=term:match("^([A-Z0-9_]+)%.value == ([a-z_]+)$")
    if name then return aliases[name] and aliases[name].value==value end
    name=term:match("^([A-Z0-9_]+) not completed$")
    if name then return aliases[name] and aliases[name].status~="completed" end
    name=term:match("^([A-Z0-9_]+) completed$")
    if name then return aliases[name] and aliases[name].status=="completed" end
    error("unsupported Poke Flute reducer predicate: "..term)
  end
  local function conditionValue(expression,aliases,context)
    for _,branch in ipairs(splitPlain(expression," or ")) do local yes=true
      for _,term in ipairs(splitPlain(branch," and ")) do if not termValue(term,aliases,context) then yes=false;break end end
      if yes then return true end
    end
    return false
  end
  local function effect(op)
    if op.op=="set_flag" or op.op=="set_trainer_defeated" then return "true" end
    if op.op=="clear_flag" or op.op=="clear_trainer_defeated" then return "false" end
    if op.op=="set_var" then return "var:"..tostring(op.value) end
    if op.op=="ensure_item" or op.op=="remove_item" then return op.op..":"..tostring(op.quantity or 1) end
    return op.op
  end

  function Pipeline.plan(canonical,inherited)
    inherited=inherited or {};local events=canonical.events
    local context={playerStarter=inherited.playerStarter,eeveePayloadConverted=inherited.eeveePayloadConverted,
      fuchsiaSlicePresent=inherited.fuchsiaSlicePresent==true}
    local operations,blockers,audits={},{},{}
    local function add(raw,owner,reason)operations[#operations+1]={op=raw.op,symbol=raw.symbol,value=raw.value,quantity=raw.quantity,owner=owner,reason=reason}end
    local function block(code,message)blockers[#blockers+1]={code=code,message=message}end
    local function audit(code,message)audits[#audits+1]={code=code,message=message}end
    for _,message in ipairs(canonical.conflicts or {}) do
      if context.fuchsiaSlicePresent and ((type(message)=="table" and message.eventId=="ROUTE16.SNORLAX_BOUNDARY")
          or (type(message)=="string" and message:find("Snorlax",1,true))) then
        audit("SUPERSEDED_SLICE_BOUNDARY","Slice 5 owns resolved Snorlax state.")
      else block("CANONICAL_CONFLICT",type(message)=="table" and (message.note or message.eventId) or message) end
    end
    for _,reducer in ipairs(data.rules.reducers) do
      local aliases={};for _,id in ipairs(reducer.inputs) do aliases[suffix(id)]=events[id] end
      local selected={}
      for _,case in ipairs(reducer.cases) do if conditionValue(case.when,aliases,context) then
        selected[#selected+1]=case.id
        for _,raw in ipairs(case.operations or {}) do add(raw,"reducer:"..reducer.id,"case:"..case.id) end
        for _,raw in ipairs((case.valueOperationsByPlayerStarter or {})[context.playerStarter] or {}) do add(raw,"reducer:"..reducer.id,"case:"..case.id) end
        if case.audit then audit("REDUCER_AUDIT",case.audit) end
        if case.blocker then block("REDUCER_BLOCKED_CASE",case.blocker) end
      end end
      audit("REDUCER_CASES",reducer.id..": "..(#selected>0 and table.concat(selected,",") or "none"))
    end
    for _,rule in ipairs(data.rules.eventRules) do
      local id,disposition=rule.eventId,rule.disposition;local rec=events[id]
      if disposition=="lossy_no_write" or disposition=="external_subsystem" then audit("NO_DIRECT_WRITE",id.." is owned elsewhere or has no durable target equivalent.")
      elseif disposition~="reducer_input" and disposition~="location_only" then
        local status=rec.status
        if status=="unresolved" then block("UNRESOLVED_DIRECT_EVENT",id.." has no safe target write.")
        elseif disposition=="target_default" and status=="completed" then block("TARGET_DEFAULT_COMPLETED",id.." cannot be completed from RBY evidence.")
        else
          local selected=status=="completed" and rule.completeOperations or rule.availableOperations
          if selected then for _,raw in ipairs(selected) do add(raw,"event:"..id,"canonical status:"..status) end
          elseif rule.target then
            local complete=status=="completed";local op=complete and "set_flag" or "clear_flag"
            if rule.profile=="trainer_base" then op=complete and "set_trainer_defeated" or "clear_trainer_defeated" end
            add({op=op,symbol=rule.target},"event:"..id,"canonical status:"..status)
          end
        end
      end
    end

    if events["POKEMON_TOWER.RIVAL_BATTLE"].status=="completed" and not SUPPORTED_STARTERS[context.playerStarter] then block("MISSING_INHERITED_STARTER_BRANCH","Pokemon Tower rival needs Slice 1's starter branch.") end
    local ghost=events["POKEMON_TOWER.GHOST_GATE_ACCESS"].status=="completed"
    local marowak=events["POKEMON_TOWER.MAROWAK_RESOLUTION"].status=="completed"
    local rescued=events["POKEMON_TOWER.MR_FUJI_RESCUED"].status=="completed"
    local flute=events["LAVENDER.POKE_FLUTE_REWARD"].status=="completed"
    local rockets=true;for i=0,2 do rockets=rockets and events["POKEMON_TOWER_7F.ROCKET_SHARED_"..i].status=="completed" end
    if marowak and not ghost then block("TOWER_GHOST_COHERENCE","Marowak cannot be resolved without a completed ghost-gate route.") end
    if rescued and (not marowak or not rockets) then block("FUJI_RESCUE_COHERENCE","Mr. Fuji rescue requires Marowak and all three Tower Rockets.") end
    if flute and not rescued then block("POKE_FLUTE_WITHOUT_FUJI","Poke Flute receipt requires Mr. Fuji rescue.") end
    if events["CELADON.EEVEE_GIFT"].status=="completed" and context.eeveePayloadConverted~=true then block("EEVEE_PAYLOAD_REQUIRED","Claimed Eevee requires successful collection conversion.") end
    local erika=events["CELADON_GYM.ERIKA_BATTLE"].status=="completed"
    local badge=events["CELADON_GYM.RAINBOW_BADGE"].status=="completed"
    local tm=events["CELADON_GYM.TM_REWARD"].status=="completed"
    if erika~=badge or (tm and not erika) then block("ERIKA_PROGRESS_COHERENCE","Erika, Rainbow Badge, and TM evidence disagree.") end
    local entrance=events["CELADON_GAME_CORNER.HIDEOUT_ENTRANCE_OPEN"].status=="completed"
    local guard=events["CELADON_GAME_CORNER.ROCKET_GUARD_BATTLE"].status=="completed"
    if entrance and not guard then block("HIDEOUT_ENTRANCE_COHERENCE","The Hideout entrance requires its Game Corner guard battle.") end
    local door=events["ROCKET_HIDEOUT.B4F_DOOR_OPEN"].status=="completed"
    local doorGrunts=events["ROCKET_HIDEOUT_B4F.TRAINER_SHARED_0"].status=="completed" and events["ROCKET_HIDEOUT_B4F.TRAINER_SHARED_1"].status=="completed"
    if door and not doorGrunts then block("HIDEOUT_DOOR_COHERENCE","The B4 barrier requires both door grunts.") end
    local giovanni=events["ROCKET_HIDEOUT.GIOVANNI_BATTLE"].status=="completed"
    local scopeReward=events["ROCKET_HIDEOUT.SILPH_SCOPE_REWARD"].status=="completed"
    local cleared=events["ROCKET_HIDEOUT.CLEARED"].status=="completed"
    if (scopeReward or cleared) and not giovanni then block("HIDEOUT_GIOVANNI_COHERENCE","Silph Scope and Hideout completion require Giovanni.") end
    local boundary=events["ROUTE16.SNORLAX_BOUNDARY"]
    if boundary.status~="available" or boundary.value~="sleeping_untouched" then
      if context.fuchsiaSlicePresent then audit("SUPERSEDED_SLICE_BOUNDARY","Slice 5 supersedes the untouched-Snorlax endpoint.")
      else block("SNORLAX_BOUNDARY_VIOLATION","Slice 4 requires both Snorlax encounters untouched.") end
    end

    local unique,bySymbol={},{}
    for _,operation in ipairs(operations) do local prior=bySymbol[operation.symbol]
      if not prior then bySymbol[operation.symbol]=operation;unique[#unique+1]=operation
      elseif effect(prior)~=effect(operation) then block("CONTRADICTORY_WRITES","Different desired effects target "..operation.symbol..".")
      else audit("WRITE_DEDUPLICATED","Identical write deduplicated for "..operation.symbol..".") end
    end
    return {planVersion="lua-1.0.0",sliceId=SLICE_ID,readyToApply=#blockers==0,operations=unique,blockers=blockers,audits=audits,
      summary={operationCount=#unique,blockerCount=#blockers,auditCount=#audits}}
  end

  local function applyOne(session,operation)
    local kind,symbol=operation.op,operation.symbol
    if kind=="set_flag" or kind=="clear_flag" then if not Flags.IDS[symbol] then return nil,"unknown FireRed flag symbol: "..symbol end;Flags.setFlag(session,nil,symbol,kind=="set_flag")
    elseif kind=="set_var" then if not Flags.VAR_IDS[symbol] then return nil,"unknown FireRed var symbol: "..symbol end;Flags.setVar(session,nil,symbol,operation.value)
    elseif kind=="set_trainer_defeated" or kind=="clear_trainer_defeated" then local id=TRAINERS[symbol];if not id then return nil,"unknown FireRed trainer symbol: "..symbol end;Flags.setTrainerDefeated(session,nil,id,kind=="set_trainer_defeated")
    elseif kind=="ensure_item" then local id=ITEMS[symbol];if not id then return nil,"unknown FireRed item symbol: "..symbol end;if not Bag.has(session.bag,id,operation.quantity or 1) and not Bag.add(session.bag,id,operation.quantity or 1) then return nil,"no room for required item: "..symbol end
    elseif kind=="remove_item" then local id=ITEMS[symbol];if not id then return nil,"unknown FireRed item symbol: "..symbol end;if Bag.has(session.bag,id,1) then Bag.remove(session.bag,id,operation.quantity or 1) end
    else return nil,"unsupported Poke Flute progress operation: "..tostring(kind) end
    return true
  end
  local function verifyOne(session,operation)
    local kind,symbol=operation.op,operation.symbol
    if kind=="set_flag" or kind=="clear_flag" then return Flags.getFlag(session,nil,symbol)==(kind=="set_flag") end
    if kind=="set_var" then return Flags.getVar(session,nil,symbol)==operation.value end
    if kind=="set_trainer_defeated" or kind=="clear_trainer_defeated" then return Flags.isTrainerDefeated(session,nil,TRAINERS[symbol])==(kind=="set_trainer_defeated") end
    if kind=="ensure_item" then return Bag.has(session.bag,ITEMS[symbol],operation.quantity or 1) end
    if kind=="remove_item" then return not Bag.has(session.bag,ITEMS[symbol],1) end
    return false
  end
  function Pipeline.apply(session,plan)
    if not plan.readyToApply then return nil,plan.blockers end
    for _,operation in ipairs(plan.operations) do local ok,err=applyOne(session,operation);if not ok then return nil,err end end
    for _,operation in ipairs(plan.operations) do if not verifyOne(session,operation) then return nil,"post-write verification failed: "..operation.symbol end end
    return {applied=#plan.operations,verified=true,planVersion=plan.planVersion,sliceId=plan.sliceId}
  end
  function Pipeline.run(session,snapshot,sourceVersion,inherited)
    local canonical=Pipeline.resolve(snapshot,sourceVersion);local plan=Pipeline.plan(canonical,inherited)
    if not plan.readyToApply then return nil,{canonical=canonical,plan=plan} end
    local write,err=Pipeline.apply(session,plan);if not write then return nil,{canonical=canonical,plan=plan,writerError=err} end
    return {canonical=canonical,plan=plan,writer=write}
  end
  return Pipeline
end

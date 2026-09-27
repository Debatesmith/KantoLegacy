-- Kanto Legacy Importer v1.5.2
-- Red / Blue / Yellow Gen1Recomp -> FireRed Gen1Recomp

return function(mod)
  local SaveData = require("src.core.SaveData")
  local SaveSerializer = require("src.core.SaveSerializer")
  local Schema = require("src.core.game3.save_schema_firered")
  local Pokemon = require("src.core.game3.pokemon")
  local Experience = require("src.core.game3.battle.experience")
  local Moves = require("src.core.game3.battle.moves")
  local Bag = require("src.core.game3.bag")
  local ItemsData = require("src.core.game3.items_data")
  local Storage = require("src.core.game3.storage")
  local Flags = require("src.core.game3.scripting.flags")
  local SummaryData = require("src.core.game3.summary_data")
  local function helper(name)
    local body,err=mod:read(name .. ".lua")
    assert(body,err)
    return assert(load(body,"@firered_legacy_importer/" .. name .. ".lua"))()
  end
  local Identity=helper("identity")
  local RepairEvidence=helper("repair_evidence")
  local Persistence=helper("persistence")

  -- RBY does not retain a trustworthy Gen 3 encounter-location provenance.
  -- Keep the nature line for imported Pokemon, but do not let the engine
  -- invent either a trade or a Pallet encounter sentence for legacyOrigin.
  if not SummaryData._kliLegacyOriginMemo then
    SummaryData._kliLegacyOriginMemo = SummaryData.formatTrainerMemo
    SummaryData.formatTrainerMemo = function(mon, playerState)
      local lines = SummaryData._kliLegacyOriginMemo(mon, playerState)
      if type(mon) == "table" and mon.legacyOrigin and not mon.isEgg then
        return { lines[1] }
      end
      return lines
    end
  end
  local progressSource, progressReadErr = mod:read("progress_pipeline.lua")
  assert(progressSource, "could not read embedded progress pipeline: " .. tostring(progressReadErr))
  local progressChunk, progressCompileErr = load(progressSource, "@firered_legacy_importer/progress_pipeline.lua")
  assert(progressChunk, progressCompileErr)
  local ProgressPipeline = progressChunk()
  local ceruleanDataSource, ceruleanDataReadErr = mod:read("progress_pipeline_cerulean_data.lua")
  assert(ceruleanDataSource, "could not read embedded Cerulean progress data: " .. tostring(ceruleanDataReadErr))
  local ceruleanDataChunk, ceruleanDataCompileErr = load(ceruleanDataSource, "@firered_legacy_importer/progress_pipeline_cerulean_data.lua")
  assert(ceruleanDataChunk, ceruleanDataCompileErr)
  local ceruleanRuntimeSource, ceruleanRuntimeReadErr = mod:read("progress_pipeline_cerulean.lua")
  assert(ceruleanRuntimeSource, "could not read embedded Cerulean progress runtime: " .. tostring(ceruleanRuntimeReadErr))
  local ceruleanRuntimeChunk, ceruleanRuntimeCompileErr = load(ceruleanRuntimeSource, "@firered_legacy_importer/progress_pipeline_cerulean.lua")
  assert(ceruleanRuntimeChunk, ceruleanRuntimeCompileErr)
  local CeruleanProgressPipeline = ceruleanRuntimeChunk()(ceruleanDataChunk())
  local vermilionDataSource, vermilionDataReadErr = mod:read("progress_pipeline_vermilion_data.lua")
  assert(vermilionDataSource, "could not read embedded Vermilion progress data: " .. tostring(vermilionDataReadErr))
  local vermilionDataChunk, vermilionDataCompileErr = load(vermilionDataSource, "@firered_legacy_importer/progress_pipeline_vermilion_data.lua")
  assert(vermilionDataChunk, vermilionDataCompileErr)
  local vermilionRuntimeSource, vermilionRuntimeReadErr = mod:read("progress_pipeline_vermilion.lua")
  assert(vermilionRuntimeSource, "could not read embedded Vermilion progress runtime: " .. tostring(vermilionRuntimeReadErr))
  local vermilionRuntimeChunk, vermilionRuntimeCompileErr = load(vermilionRuntimeSource, "@firered_legacy_importer/progress_pipeline_vermilion.lua")
  assert(vermilionRuntimeChunk, vermilionRuntimeCompileErr)
  local VermilionProgressPipeline = vermilionRuntimeChunk()(vermilionDataChunk())
  local pokeFluteDataSource, pokeFluteDataReadErr = mod:read("progress_pipeline_pokeflute_data.lua")
  assert(pokeFluteDataSource, "could not read embedded Poke Flute progress data: " .. tostring(pokeFluteDataReadErr))
  local pokeFluteDataChunk, pokeFluteDataCompileErr = load(pokeFluteDataSource, "@firered_legacy_importer/progress_pipeline_pokeflute_data.lua")
  assert(pokeFluteDataChunk, pokeFluteDataCompileErr)
  local pokeFluteRuntimeSource, pokeFluteRuntimeReadErr = mod:read("progress_pipeline_pokeflute.lua")
  assert(pokeFluteRuntimeSource, "could not read embedded Poke Flute progress runtime: " .. tostring(pokeFluteRuntimeReadErr))
  local pokeFluteRuntimeChunk, pokeFluteRuntimeCompileErr = load(pokeFluteRuntimeSource, "@firered_legacy_importer/progress_pipeline_pokeflute.lua")
  assert(pokeFluteRuntimeChunk, pokeFluteRuntimeCompileErr)
  local PokeFluteProgressPipeline = pokeFluteRuntimeChunk()(pokeFluteDataChunk())
  local fuchsiaDataSource, fuchsiaDataReadErr = mod:read("progress_pipeline_fuchsia_data.lua")
  assert(fuchsiaDataSource, "could not read embedded Fuchsia progress data: " .. tostring(fuchsiaDataReadErr))
  local fuchsiaDataChunk, fuchsiaDataCompileErr = load(fuchsiaDataSource, "@firered_legacy_importer/progress_pipeline_fuchsia_data.lua")
  assert(fuchsiaDataChunk, fuchsiaDataCompileErr)
  local fuchsiaRuntimeSource, fuchsiaRuntimeReadErr = mod:read("progress_pipeline_fuchsia.lua")
  assert(fuchsiaRuntimeSource, "could not read embedded Fuchsia progress runtime: " .. tostring(fuchsiaRuntimeReadErr))
  local fuchsiaRuntimeChunk, fuchsiaRuntimeCompileErr = load(fuchsiaRuntimeSource, "@firered_legacy_importer/progress_pipeline_fuchsia.lua")
  assert(fuchsiaRuntimeChunk, fuchsiaRuntimeCompileErr)
  local FuchsiaProgressPipeline = fuchsiaRuntimeChunk()(fuchsiaDataChunk())
  local saffronDataSource, saffronDataReadErr = mod:read("progress_pipeline_saffron_data.lua")
  assert(saffronDataSource, "could not read embedded Saffron progress data: " .. tostring(saffronDataReadErr))
  local saffronDataChunk, saffronDataCompileErr = load(saffronDataSource, "@firered_legacy_importer/progress_pipeline_saffron_data.lua")
  assert(saffronDataChunk, saffronDataCompileErr)
  local saffronRuntimeSource, saffronRuntimeReadErr = mod:read("progress_pipeline_saffron.lua")
  assert(saffronRuntimeSource, "could not read embedded Saffron progress runtime: " .. tostring(saffronRuntimeReadErr))
  local saffronRuntimeChunk, saffronRuntimeCompileErr = load(saffronRuntimeSource, "@firered_legacy_importer/progress_pipeline_saffron.lua")
  assert(saffronRuntimeChunk, saffronRuntimeCompileErr)
  local SaffronProgressPipeline = saffronRuntimeChunk()(saffronDataChunk())
  local cinnabarDataSource, cinnabarDataReadErr = mod:read("progress_pipeline_cinnabar_data.lua")
  assert(cinnabarDataSource, "could not read embedded Cinnabar progress data: " .. tostring(cinnabarDataReadErr))
  local cinnabarDataChunk, cinnabarDataCompileErr = load(cinnabarDataSource, "@firered_legacy_importer/progress_pipeline_cinnabar_data.lua")
  assert(cinnabarDataChunk, cinnabarDataCompileErr)
  local cinnabarRuntimeSource, cinnabarRuntimeReadErr = mod:read("progress_pipeline_cinnabar.lua")
  assert(cinnabarRuntimeSource, "could not read embedded Cinnabar progress runtime: " .. tostring(cinnabarRuntimeReadErr))
  local cinnabarRuntimeChunk, cinnabarRuntimeCompileErr = load(cinnabarRuntimeSource, "@firered_legacy_importer/progress_pipeline_cinnabar.lua")
  assert(cinnabarRuntimeChunk, cinnabarRuntimeCompileErr)
  local CinnabarProgressPipeline = cinnabarRuntimeChunk()(cinnabarDataChunk())
  local championDataSource, championDataReadErr = mod:read("progress_pipeline_champion_data.lua")
  assert(championDataSource, "could not read embedded Champion progress data: " .. tostring(championDataReadErr))
  local championDataChunk, championDataCompileErr = load(championDataSource, "@firered_legacy_importer/progress_pipeline_champion_data.lua")
  assert(championDataChunk, championDataCompileErr)
  local championRuntimeSource, championRuntimeReadErr = mod:read("progress_pipeline_champion.lua")
  assert(championRuntimeSource, "could not read embedded Champion progress runtime: " .. tostring(championRuntimeReadErr))
  local championRuntimeChunk, championRuntimeCompileErr = load(championRuntimeSource, "@firered_legacy_importer/progress_pipeline_champion.lua")
  assert(championRuntimeChunk, championRuntimeCompileErr)
  local ChampionProgressPipeline = championRuntimeChunk()(championDataChunk())
  local caveDataSource, caveDataReadErr = mod:read("progress_pipeline_cerulean_cave_data.lua")
  assert(caveDataSource, "could not read embedded Cerulean Cave progress data: " .. tostring(caveDataReadErr))
  local caveDataChunk, caveDataCompileErr = load(caveDataSource, "@firered_legacy_importer/progress_pipeline_cerulean_cave_data.lua")
  assert(caveDataChunk, caveDataCompileErr)
  local caveRuntimeSource, caveRuntimeReadErr = mod:read("progress_pipeline_cerulean_cave.lua")
  assert(caveRuntimeSource, "could not read embedded Cerulean Cave progress runtime: " .. tostring(caveRuntimeReadErr))
  local caveRuntimeChunk, caveRuntimeCompileErr = load(caveRuntimeSource, "@firered_legacy_importer/progress_pipeline_cerulean_cave.lua")
  assert(caveRuntimeChunk, caveRuntimeCompileErr)
  local CeruleanCaveProgressPipeline = caveRuntimeChunk()(caveDataChunk())

  local SOURCE_VERSIONS = { "red", "blue", "yellow" }
  local BADGES = {
    BOULDERBADGE = true, CASCADEBADGE = true, THUNDERBADGE = true,
    RAINBOWBADGE = true, SOULBADGE = true, MARSHBADGE = true,
    VOLCANOBADGE = true, EARTHBADGE = true,
  }
  local BADGE_IMPORTS = {
    { item = "BOULDERBADGE", event = "EVENT_BEAT_BROCK", flag = 0x820, defeatedFlag = 0x4B0, trainer = 414, rewardFlag = 0x254, name = "BOULDER", fieldMove = "FLASH" },
    { item = "CASCADEBADGE", event = "EVENT_BEAT_MISTY", flag = 0x821, defeatedFlag = 0x4B1, trainer = 415, rewardFlag = 0x297, name = "CASCADE", fieldMove = "CUT" },
    { item = "THUNDERBADGE", event = "EVENT_BEAT_LT_SURGE", flag = 0x822, defeatedFlag = 0x4B2, trainer = 416, rewardFlag = 0x231, name = "THUNDER", fieldMove = "FLY" },
    { item = "RAINBOWBADGE", event = "EVENT_BEAT_ERIKA", flag = 0x823, defeatedFlag = 0x4B3, trainer = 417, rewardFlag = 0x293, name = "RAINBOW", fieldMove = "STRENGTH" },
    { item = "SOULBADGE", event = "EVENT_BEAT_KOGA", flag = 0x824, defeatedFlag = 0x4B4, trainer = 418, rewardFlag = 0x259, name = "SOUL", fieldMove = "SURF" },
    { item = "MARSHBADGE", event = "EVENT_BEAT_SABRINA", flag = 0x825, defeatedFlag = 0x4B5, trainer = 420, rewardFlag = 0x29A, name = "MARSH", fieldMove = "ROCK_SMASH" },
    { item = "VOLCANOBADGE", event = "EVENT_BEAT_BLAINE", flag = 0x826, defeatedFlag = 0x4B6, trainer = 419, rewardFlag = 0x24E, name = "VOLCANO", fieldMove = "WATERFALL" },
    { item = "EARTHBADGE", event = "EVENT_BEAT_GIOVANNI", flag = 0x827, defeatedFlag = 0x4B7, trainer = 350, rewardFlag = 0x298, name = "EARTH", fieldMove = "DIVE" },
  }
  local FLY_VISITS = {
    PALLET_TOWN = { map = "FR_PALLET_TOWN", flag = 0x890 },
    VIRIDIAN_CITY = { map = "FR_VIRIDIAN_CITY", flag = 0x891 },
    PEWTER_CITY = { map = "FR_PEWTER_CITY", flag = 0x892 },
    CERULEAN_CITY = { map = "FR_CERULEAN_CITY", flag = 0x893 },
    LAVENDER_TOWN = { map = "FR_LAVENDER_TOWN", flag = 0x894 },
    VERMILION_CITY = { map = "FR_VERMILION_CITY", flag = 0x895 },
    CELADON_CITY = { map = "FR_CELADON_CITY", flag = 0x896 },
    FUCHSIA_CITY = { map = "FR_FUCHSIA_CITY", flag = 0x897 },
    CINNABAR_ISLAND = { map = "FR_CINNABAR_ISLAND", flag = 0x898 },
    INDIGO_PLATEAU = { map = "FR_INDIGO_PLATEAU_EXTERIOR", flag = 0x899 },
    SAFFRON_CITY = { map = "FR_SAFFRON_CITY", flag = 0x89A },
  }
  local MOVE_ALIASES = {
    PSYCHIC_M = "PSYCHIC",
  }
  local MON_KEYS = { "hp", "atk", "def", "spe", "spa", "spd" }

  local liveGame = nil

  local function normalizeLegacyMonOwner(session, mon)
    if type(mon) ~= "table" or not mon.legacyOrigin then return false end
    local ownerName = tostring(session.name or session.playerName or "RED")
    local ownerId = tonumber(session.trainerId or session.id or session.playerId) or 0
    local ownerSecret = tonumber(session.secretId or session.otSecretId) or 0
    mon.legacySourceOtName = mon.legacySourceOtName or mon.otName or mon.ot or mon.originalTrainer
    mon.legacySourceOtId = mon.legacySourceOtId or mon.otId
    mon.ot = ownerName
    mon.otName = ownerName
    mon.originalTrainer = ownerName
    mon.otId = ownerId
    mon.otSecretId = ownerSecret
    return true
  end

  local function normalizeLegacyOwnership(session)
    local count = 0
    for _, mon in ipairs(session.party or {}) do
      if normalizeLegacyMonOwner(session, mon) then count = count + 1 end
    end
    local storage = session.storage
    for _, box in pairs(type(storage) == "table" and storage.boxes or {}) do
      for _, mon in pairs(type(box) == "table" and box.mons or {}) do
        if normalizeLegacyMonOwner(session, mon) then count = count + 1 end
      end
    end
    return count
  end

  local function completeLeader(session, badge, index, preserveReward)
    Flags.setFlag(session, nil, badge.defeatedFlag, true)
    Flags.setFlag(session, nil, 0x500 + badge.trainer, true)
    -- Opening-slice reward ownership belongs to the canonical progress plan;
    -- later legacy imports retain the established badge-implies-reward policy.
    if not preserveReward then Flags.setFlag(session, nil, badge.rewardFlag, true) end
    if index == 3 then Flags.setFlag(session, nil, 0x264, true) end
    if index == 7 then
      for _, id in ipairs({0x265, 0x267, 0x268, 0x269, 0x26A, 0x26B}) do
        Flags.setFlag(session, nil, id, true)
      end
    end
  end

  local function repairLegacyState(session)
    local legacy = session and session.modData and session.modData.firered_legacy_importer
    if not (legacy and legacy.imported and session.dex) then return end
    local importedVersion = tostring(legacy.version or "")
    for index, badge in ipairs(BADGE_IMPORTS) do
      local f = session.flags or {}
      if f[badge.flag] or f[tostring(badge.flag)] then
        local canonicalSince={"0.5.0","0.6.0","0.7.0","0.8.0","0.9.0","1.0.0","1.1.0","1.2.0"}
        local canonicalReward=RepairEvidence.versionAtLeast(importedVersion,canonicalSince[index])
        completeLeader(session, badge, index, canonicalReward)
      end
    end
    local dex = session.dex
    dex.seen, dex.owned, dex.caught = dex.seen or {}, dex.owned or {}, dex.caught or {}
    for id, on in pairs(dex.owned) do
      if on then dex.caught[id] = true; dex.seen[id] = true end
    end
    for id, on in pairs(dex.caught) do
      if on then dex.owned[id] = true; dex.seen[id] = true end
    end
    local repaired = normalizeLegacyOwnership(session)
    legacy.ownershipRepair = { version = "1.1.1", pokemon = repaired }
    if not RepairEvidence.versionAtLeast(importedVersion,"1.1.2") then
      local added,method=RepairEvidence.apply(session,legacy,Flags,"silph3to10")
      legacy.silphTrainerRepair = { version = "1.1.2", flagsAdded = added, method = method }
    end
    if not RepairEvidence.versionAtLeast(importedVersion,"1.1.3") then
      local added, method = RepairEvidence.apply(session,legacy,Flags,"silph11")
      legacy.silph11FTrainerRepair = { version = "1.1.3", flagsAdded = added, method = method }
    end
    if not RepairEvidence.versionAtLeast(importedVersion,"1.3.0") then
      local added, method = RepairEvidence.apply(session,legacy,Flags,"cave")
      legacy.ceruleanCaveRepair = { version = "1.3.0", flagsAdded = added, method = method }
    end
    if not RepairEvidence.versionAtLeast(importedVersion,"1.5.2") then legacy.version = "1.5.2" end
  end

  -- FireRed's Fly picker reads save.visited, while the 0.2.62 schema did not
  -- yet round-trip that table. Preserve it without changing any native saves
  -- that do not carry the field.
  if not Schema._kliVisitedRoundTrip then
    local nativeToSaveTable = Schema.toSaveTable
    local nativeFromSaveTable = Schema.fromSaveTable
    Schema.toSaveTable = function(session)
      repairLegacyState(session)
      local save = nativeToSaveTable(session)
      if type(session) == "table" and type(session.visited) == "table" then
        save.visited = session.visited
      end
      return save
    end
    Schema.fromSaveTable = function(save)
      local session = nativeFromSaveTable(save)
      repairLegacyState(session)
      if type(save) == "table" and type(save.visited) == "table" then
        session.visited = save.visited
      end
      return session
    end
    Schema._kliVisitedRoundTrip = true
  end

  local function logInfo(text)
    if mod.log and mod.log.info then mod.log:info(text) end
  end

  local function logWarn(text)
    if mod.log and mod.log.warn then mod.log:warn(text) end
  end

  local function clamp(value, lo, hi)
    value = tonumber(value) or lo
    if value < lo then return lo end
    if value > hi then return hi end
    return value
  end

  local function decodeBody(body)
    if type(body) ~= "string" or body == "" then return nil, "empty save" end
    local ok, saveOrErr, decodeErr = pcall(SaveSerializer.decode, body)
    if not ok then return nil, tostring(saveOrErr) end
    if type(saveOrErr) ~= "table" then
      return nil, tostring(decodeErr or "decoder returned no table")
    end
    return saveOrErr
  end

  local function readActive(version)
    local slotId = SaveData.activeSlot(version)
    if not slotId then return nil, nil, "no active slot" end
    if type(SaveData.readSlotSource) ~= "function" then
      return nil, slotId, "this engine has no safe cross-slot reader"
    end
    local ok, bodyOrErr = pcall(SaveData.readSlotSource, version, slotId)
    if not ok then return nil, slotId, tostring(bodyOrErr) end
    local save, err = decodeBody(bodyOrErr)
    return save, slotId, err
  end

  local function countMons(save)
    local n = #(save.party or {})
    for _, box in pairs(save.boxes or {}) do
      for _, mon in pairs(type(box) == "table" and box or {}) do
        if type(mon) == "table" and mon.species then n = n + 1 end
      end
    end
    return n
  end

  local function sourceHasBadge(save, badge, index)
    if type(save) ~= "table" then return false end
    local inventory = save.inventory or {}
    if (tonumber(inventory[badge.item]) or 0) > 0 then return true end
    if save.flags and save.flags[badge.event] == true then return true end

    local playerBadges = save.player and save.player.badges
    if type(playerBadges) == "table" then
      return playerBadges[index] == true
        or (tonumber(playerBadges[index]) or 0) > 0
        or playerBadges[badge.item] == true
        or playerBadges[badge.name] == true
    elseif type(playerBadges) == "number" then
      return math.floor(playerBadges / (2 ^ (index - 1))) % 2 == 1
    end
    return false
  end

  local function badgeCount(save)
    local n = 0
    for index, badge in ipairs(BADGE_IMPORTS) do
      if sourceHasBadge(save, badge, index) then n = n + 1 end
    end
    return n
  end

  local function timeText(save)
    local seconds = math.max(0, math.floor(tonumber(save and save.playTime) or 0))
    return string.format("%d:%02d", math.floor(seconds / 3600), math.floor(seconds / 60) % 60)
  end

  local normalName

  local function detectSources()
    local found = {}
    for _, version in ipairs(SOURCE_VERSIONS) do
      local save, slotId, err = readActive(version)
      if save then
        found[#found + 1] = {
          version = version,
          slotId = slotId,
          name = normalName(save.player and save.player.name, version:upper()),
          badges = badgeCount(save),
          timeText = timeText(save),
          monCount = countMons(save),
        }
      elseif slotId then
        logWarn(("Kanto Legacy could not read %s/%s: %s")
          :format(version, tostring(slotId), tostring(err)))
      end
    end
    return found
  end

  normalName = function(value, fallback)
    local text = tostring(value or fallback or "")
    if text == "" then text = fallback or "RED" end
    return text:sub(1, 7)
  end

  local function speciesId(sourceSpecies)
    if type(sourceSpecies) == "number" then return sourceSpecies end
    return Pokemon.speciesFromName(sourceSpecies)
  end

  local function moveId(sourceMove)
    local id = type(sourceMove) == "table" and sourceMove.id or sourceMove
    if type(id) == "number" then return id end
    id = MOVE_ALIASES[tostring(id)] or id
    return Moves.numForName(id)
  end

  local function hpDv(dvs)
    if tonumber(dvs and dvs.hp) then return clamp(dvs.hp, 0, 15) end
    local a = clamp(dvs and dvs.attack, 0, 15)
    local d = clamp(dvs and dvs.defense, 0, 15)
    local s = clamp(dvs and dvs.speed, 0, 15)
    local c = clamp(dvs and dvs.special, 0, 15)
    return (a % 2) * 8 + (d % 2) * 4 + (s % 2) * 2 + (c % 2)
  end

  local function ivFromDv(dv)
    return math.floor(clamp(dv, 0, 15) * 31 / 15 + 0.5)
  end

  local function convertIvs(dvs)
    dvs = dvs or {}
    return {
      hp = ivFromDv(hpDv(dvs)),
      atk = ivFromDv(dvs.attack),
      def = ivFromDv(dvs.defense),
      spe = ivFromDv(dvs.speed),
      spa = ivFromDv(dvs.special),
      spd = ivFromDv(dvs.special),
    }
  end

  local function convertEvs(statExp)
    statExp = statExp or {}
    local raw = {
      hp = math.min(252, math.floor(math.sqrt(clamp(statExp.hp, 0, 65535)))),
      atk = math.min(252, math.floor(math.sqrt(clamp(statExp.attack, 0, 65535)))),
      def = math.min(252, math.floor(math.sqrt(clamp(statExp.defense, 0, 65535)))),
      spe = math.min(252, math.floor(math.sqrt(clamp(statExp.speed, 0, 65535)))),
      spa = math.min(252, math.floor(math.sqrt(clamp(statExp.special, 0, 65535)))),
      spd = math.min(252, math.floor(math.sqrt(clamp(statExp.special, 0, 65535)))),
    }
    local total = 0
    for _, key in ipairs(MON_KEYS) do total = total + raw[key] end
    if total <= 510 then return raw end

    local out, used, fractions = {}, 0, {}
    for _, key in ipairs(MON_KEYS) do
      local exact = raw[key] * 510 / total
      out[key] = math.floor(exact)
      used = used + out[key]
      fractions[#fractions + 1] = { key = key, fraction = exact - out[key] }
    end
    table.sort(fractions, function(a, b)
      if a.fraction == b.fraction then return a.key < b.key end
      return a.fraction > b.fraction
    end)
    local i = 1
    while used < 510 do
      local key = fractions[i].key
      if out[key] < 252 then out[key] = out[key] + 1; used = used + 1 end
      i = (i % #fractions) + 1
    end
    return out
  end

  local function wasGen2Shiny(dvs)
    dvs = dvs or {}
    local attack = tonumber(dvs.attack)
    return tonumber(dvs.defense) == 10
      and tonumber(dvs.speed) == 10
      and tonumber(dvs.special) == 10
      and (attack == 2 or attack == 3 or attack == 6 or attack == 7
        or attack == 10 or attack == 11 or attack == 14 or attack == 15)
  end

  local function hashText(text, seed)
    local n = tonumber(seed) or 2166136261
    for i = 1, #tostring(text or "") do
      -- 65599 keeps each multiply exact in Lua's double-number build while
      -- still producing a useful deterministic 32-bit personality seed.
      n = (n * 65599 + tostring(text):byte(i)) % 4294967296
    end
    return n
  end

  local function wantedGender(sourceMon)
    local g = tostring(sourceMon.gender or ""):lower()
    if g == "male" or g == "m" then return "M" end
    if g == "female" or g == "f" then return "F" end
    return nil
  end

  local function personalityFor(sourceMon, species, otId)
    local dvs = sourceMon.dvs or {}
    local seed = hashText(sourceMon.nickname or sourceMon.species, otId)
    seed = hashText(table.concat({
      species, dvs.attack or 0, dvs.defense or 0, dvs.speed or 0, dvs.special or 0,
    }, ":"), seed)
    local want = wantedGender(sourceMon)
    if want then
      for add = 0, 255 do
        local candidate = (seed + add) % 4294967296
        if Pokemon.gender(species, candidate) == want then return candidate end
      end
    end
    return seed
  end

  local function convertMoves(sourceMon, report)
    local moves, pp, maxPp, packed = {}, {}, {}, 0
    for slot, sourceMove in ipairs(sourceMon.moves or {}) do
      if slot > 4 then break end
      local id = moveId(sourceMove)
      local def = id and Pokemon.battleMove(id)
      if id and def then
        local base = tonumber(def.pp) or 5
        local ups = math.floor(clamp(type(sourceMove)=="table" and sourceMove.ppUps or 0, 0, 3))
        local maximum = base + math.floor(base * ups / 5)
        moves[#moves + 1] = id
        pp[#pp + 1] = math.floor(clamp(type(sourceMove)=="table" and sourceMove.pp or maximum, 0, maximum))
        packed = packed + ups * 4 ^ (#moves - 1)
        maxPp[#maxPp + 1] = maximum
      else
        report.skippedMoves[#report.skippedMoves + 1] = tostring(type(sourceMove)=="table" and sourceMove.id or sourceMove)
      end
    end
    return moves, pp, maxPp, packed
  end

  local function convertMon(session, sourceSave, sourceMon, origin, report)
    if type(sourceMon) ~= "table" or not sourceMon.species then return nil end
    local species = speciesId(sourceMon.species)
    if not species then
      report.skippedMons[#report.skippedMons + 1] = {
        origin = origin, species = tostring(sourceMon.species), reason = "unsupported_species",
      }
      return nil
    end

    local player = sourceSave.player or {}
    local level = clamp(sourceMon.level, 1, 100)
    local otId = clamp(session.trainerId or player.id, 0, 65535)
    local personality = Identity.constrain(personalityFor(sourceMon, species, otId),
      otId, tonumber(session.secretId or session.otSecretId) or 0, wasGen2Shiny(sourceMon.dvs))
    local moves, pp, maxPp, packed = convertMoves(sourceMon, report)
    local meta = Pokemon.speciesMeta(species) or {}
    local friendship = clamp(sourceMon.happiness or sourceMon.johtoBond or meta.friendship or 70, 0, 255)
    local mon = {
      species = species,
      speciesId = species,
      name = Pokemon.name(species),
      nickname = tostring(sourceMon.nickname or ""):sub(1, 10),
      level = level,
      metLevel = level,
      growthRate = tonumber(meta.growthRate) or 0,
      exp = tonumber(sourceMon.exp or sourceMon.experience) or 0,
      status = nil,
      moves = moves,
      pp = pp,
      maxPp = maxPp,
      ppBonusesPacked = packed,
      personality = personality,
      nature = Pokemon.natureId(personality),
      ivs = convertIvs(sourceMon.dvs),
      evs = convertEvs(sourceMon.statExp),
      ability = Pokemon.abilityId(species, personality),
      abilityId = Pokemon.abilityId(species, personality),
      gender = Pokemon.gender(species, personality),
      happiness = friendship,
      friendship = friendship,
      ot = session.name,
      otName = session.name,
      originalTrainer = session.name,
      otId = otId,
      otSecretId = tonumber(session.secretId or session.otSecretId) or 0,
      pokeball = 4,
      isShiny = wasGen2Shiny(sourceMon.dvs),
      legacyOrigin = origin,
      legacySourceOtName = normalName(sourceMon.otName or sourceMon.ot or player.name, "RED"),
      legacySourceOtId = clamp(sourceMon.otId or player.id, 0, 65535),
    }
    normalizeLegacyMonOwner(session, mon)
    Pokemon.applyStats(mon)
    mon.hp = mon.maxHp
    return mon
  end

  local function depositAtEnd(storage, mon)
    for boxId = Storage.TOTAL_BOXES_COUNT, 1, -1 do
      local box = storage.boxes[boxId]
      for slot = Storage.IN_BOX_COUNT, 1, -1 do
        if box.mons[slot] == nil then box.mons[slot] = mon; return boxId, slot end
      end
    end
    return nil
  end

  local function depositFromSourceBox(storage, preferredBox, mon)
    local box = storage.boxes[preferredBox]
    if box then
      for slot = 1, Storage.IN_BOX_COUNT do
        if box.mons[slot] == nil then box.mons[slot] = mon; return preferredBox, slot end
      end
    end
    local boxId, slot = Storage.findOpenSlot(storage)
    if boxId then storage.boxes[boxId].mons[slot] = mon end
    return boxId, slot
  end

  -- RBY has one Day Care slot. Native Gen1Recomp saves use `daycare.mon`,
  -- while newer normalized records may expose the same payload through
  -- `daycare.slots`. Accept both, but reject malformed or multi-Pokemon state
  -- rather than risk dropping or duplicating a Pokemon.
  local function sourceDaycarePayload(sourceSave)
    local daycare = sourceSave.daycare
    if daycare == nil then return nil, { state = "empty", shape = "sparse" } end
    if type(daycare) ~= "table" then
      return nil, { state = "malformed", reason = "daycare is not a table" }
    end

    local candidates = {}
    local function add(mon, shape, steps, depositLevel)
      if type(mon) ~= "table" or mon.species == nil then
        return nil, "Day Care payload has no readable Pokemon"
      end
      for _, existing in ipairs(candidates) do
        if existing.mon == mon then return true end
      end
      candidates[#candidates + 1] = {
        mon = mon, shape = shape, steps = steps, depositLevel = depositLevel,
      }
      return true
    end

    if daycare.mon ~= nil then
      local ok, err = add(daycare.mon, "daycare.mon", daycare.steps, daycare.depositLevel)
      if not ok then return nil, { state = "malformed", reason = err } end
    end
    if daycare.slots ~= nil then
      if type(daycare.slots) ~= "table" then
        return nil, { state = "malformed", reason = "daycare.slots is not a table" }
      end
      for _, slot in pairs(daycare.slots) do
        if type(slot) ~= "table" then
          return nil, { state = "malformed", reason = "Day Care slot is not a table" }
        end
        local mon = slot.mon or (slot.species ~= nil and slot or nil)
        if not mon then
          return nil, { state = "malformed", reason = "Day Care slot has no Pokemon" }
        end
        local ok, err = add(mon, "daycare.slots", slot.steps or daycare.steps,
          slot.depositLevel or daycare.depositLevel)
        if not ok then return nil, { state = "malformed", reason = err } end
      end
    elseif daycare.mon == nil then
      return nil, { state = "malformed", reason = "Day Care record exposes neither mon nor slots" }
    end

    if #candidates == 0 then
      return nil, { state = "empty", shape = "daycare.slots" }
    end
    if #candidates ~= 1 then
      return nil, { state = "malformed", reason = "RBY Day Care contains more than one Pokemon" }
    end
    return candidates[1], { state = "occupied", shape = candidates[1].shape }
  end

  local function importDaycarePokemon(session, sourceSave, storage, report)
    local payload, state = sourceDaycarePayload(sourceSave)
    report.daycare = {
      sourceState = state.state,
      sourceShape = state.shape,
      transferred = 0,
      disposition = state.state == "empty" and "empty" or nil,
    }
    if state.state == "malformed" then
      return nil, "Day Care state is unreadable -- " .. tostring(state.reason)
    end
    if not payload then return true end

    local converted = convertMon(session, sourceSave, payload.mon, "daycare:1", report)
    if not converted then
      return nil, "the deposited Day Care Pokemon is not transferable"
    end

    -- Gen1Recomp accrues one deferred experience point per overworld step and
    -- realizes it only when the source Pokemon is withdrawn. Since FireRed has
    -- no importer-safe native Day Care API, normalize the Pokemon into the PC
    -- as though it were withdrawn: retain its recorded moves, realize pending
    -- EXP/level, heal it, and charge no fee during conversion.
    local pendingSteps = math.max(0, math.floor(tonumber(payload.steps) or 0))
    local growth = tonumber(converted.growthRate) or Pokemon.growthRate(converted.species)
    local baseExp = tonumber(payload.mon.exp or payload.mon.experience)
      or Experience.expForLevel(growth, tonumber(payload.mon.level) or 1)
    local cap = Experience.expForLevel(growth, 100)
    converted.exp = math.min(cap, baseExp + pendingSteps)
    converted.level = Experience.levelForExp(growth, converted.exp)
    Pokemon.applyStats(converted)
    converted.hp = converted.maxHp

    local preferred = clamp(sourceSave.currentBox or 1, 1, 12)
    local boxId, slot = depositFromSourceBox(storage, preferred, converted)
    if not boxId then return nil, "FireRed PC filled while transferring the Day Care Pokemon" end
    report.boxed = report.boxed + 1
    report.daycare = {
      sourceState = "occupied",
      sourceShape = payload.shape,
      transferred = 1,
      disposition = "fireRedPc",
      legacyOrigin = "daycare:1",
      pendingSteps = pendingSteps,
      sourceDepositLevel = tonumber(payload.depositLevel),
      importedLevel = converted.level,
      targetBox = boxId,
      targetSlot = slot,
    }
    return true
  end

  local function importPokemon(session, sourceSave, report)
    local storage = Storage.ensure(session)
    -- Keep the newly chosen FireRed starter and any current party at the far end.
    for _, existing in ipairs(session.party or {}) do
      if not depositAtEnd(storage, existing) then
        return nil, "FireRed PC has no room for the current party"
      end
      report.fireRedMonsPreserved = report.fireRedMonsPreserved + 1
    end

    local party = {}
    for slot, sourceMon in ipairs(sourceSave.party or {}) do
      if slot > 6 then break end
      local mon = convertMon(session, sourceSave, sourceMon, "party:" .. slot, report)
      if mon then party[#party + 1] = mon end
    end
    if #party == 0 then return nil, "the selected Gen 1 party has no transferable Pokemon" end
    session.party = party
    report.party = #party

    for boxId = 1, 12 do
      local sourceBox = (sourceSave.boxes and sourceSave.boxes[boxId]) or {}
      for slot = 1, 20 do
        local sourceMon = sourceBox[slot]
        if sourceMon then
          local mon = convertMon(session, sourceSave, sourceMon,
            ("box:%d:%d"):format(boxId, slot), report)
          if mon then
            local destBox = depositFromSourceBox(storage, boxId, mon)
            if not destBox then return nil, "FireRed PC filled during import" end
            report.boxed = report.boxed + 1
          end
        end
      end
    end
    local daycareOk, daycareErr = importDaycarePokemon(session, sourceSave, storage, report)
    if not daycareOk then return nil, daycareErr end
    return true
  end

  local function importDex(session, sourceSave, report)
    session.dex = session.dex or { seen = {}, owned = {}, national = false }
    session.dex.seen = session.dex.seen or {}
    session.dex.owned = session.dex.owned or {}
    session.dex.caught = session.dex.caught or {}
    local dex = sourceSave.pokedex or sourceSave.dex or {}
    for _, kind in ipairs({ "seen", "owned" }) do
      for sourceSpecies, owned in pairs(dex[kind] or {}) do
        if owned then
          local id = speciesId(sourceSpecies)
          if id then session.dex[kind][id] = true end
        end
      end
    end
    for id, owned in pairs(session.dex.owned) do
      if owned then
        session.dex.seen[id] = true
        session.dex.caught[id] = true
        report.dexOwned = report.dexOwned + 1
      end
    end
    for _, seen in pairs(session.dex.seen) do if seen then report.dexSeen = report.dexSeen + 1 end end
  end

  local function machineForMove(wantedMove)
    if not wantedMove then return nil end
    for itemId = ItemsData.FIRST_TM, ItemsData.LAST_HM do
      if Pokemon.moveFromTmItem(itemId) == wantedMove then return itemId end
    end
    return nil
  end

  -- Native FireRed substitutes for RBY moves that have no FireRed TM/HM.
  -- Exact move matches take precedence. These are explicit compatibility
  -- choices, not an assumption that TM numbers mean the same thing.
  local MACHINE_REPLACEMENTS = {
    MEGA_PUNCH=31, RAZOR_WIND=40, SWORDS_DANCE=8, WHIRLWIND=5,
    MEGA_KICK=31, HORN_DRILL=27, BODY_SLAM=27, TAKE_DOWN=27,
    DOUBLE_EDGE=27, BUBBLEBEAM=3, BUBBLE_BEAM=3, WATER_GUN=3,
    PAY_DAY=46, SUBMISSION=31, COUNTER=1, SEISMIC_TOSS=31,
    RAGE=21, MEGA_DRAIN=19, DRAGON_RAGE=2, FISSURE=26,
    TELEPORT=30, MIMIC=49, BIDE=39, METRONOME=43,
    SELFDESTRUCT=36, SELF_DESTRUCT=36, EGG_BOMB=43, SWIFT=40,
    SKULL_BASH=27, SOFTBOILED=44, SOFT_BOILED=44, DREAM_EATER=29,
    SKY_ATTACK=40, THUNDER_WAVE=34, PSYWAVE=4, EXPLOSION=36,
    ROCK_SLIDE=39, TRI_ATTACK=43, SUBSTITUTE=17,
  }

  local function resolveItem(sourceId)
    sourceId = tostring(sourceId)
    if BADGES[sourceId] then return nil, "badge" end
    if sourceId:match("^TM_") or sourceId:match("^HM_") then
      local moveName = sourceId:gsub("^[TH]M_", "")
      local machine = machineForMove(moveId(MOVE_ALIASES[moveName] or moveName))
      if machine then return machine, "machine" end
      local replacement = MACHINE_REPLACEMENTS[moveName]
      if replacement then return ItemsData.FIRST_TM + replacement - 1, "machine_replacement" end
      return nil, "no_firered_machine"
    end
    local id = ItemsData.toNumericId(sourceId)
    if not id then return nil, "no_firered_equivalent" end
    local info = ItemsData.info(id)
    if info and info.pocket == "KEY_ITEMS" then return nil, "story_key_item" end
    return id, "exact"
  end

  local function addPcItem(storage, id, qty)
    qty = clamp(math.floor(tonumber(qty) or 0), 0, Storage.MAX_ITEM_QTY)
    if qty == 0 then return true end
    for _, entry in ipairs(storage.items or {}) do
      if tonumber(entry.id) == tonumber(id) then
        entry.qty = math.min(Storage.MAX_ITEM_QTY, (tonumber(entry.qty) or 0) + qty)
        return true
      end
    end
    if #(storage.items or {}) >= Storage.PC_ITEMS_COUNT then return false end
    storage.items[#storage.items + 1] = { id = id, qty = qty }
    return true
  end

  local function importItems(session, sourceSave, report)
    local storage = Storage.ensure(session)
    report.machineTransfers = {}
    local function transfer(entries, location)
      local keys = {}
      for id in pairs(entries or {}) do keys[#keys + 1] = id end
      table.sort(keys, function(a,b) return tostring(a) < tostring(b) end)
      for _, sourceId in ipairs(keys) do
        local qty = math.max(0, math.floor(tonumber(entries[sourceId]) or 0))
        local id, method = resolveItem(sourceId)
        local machine = method == "machine" or method == "machine_replacement"
        if qty > 0 then
          if machine then
            -- All machines, including PC stock, must be usable in the TM Case.
            -- Never silently truncate a stack or fall back to unusable PC storage.
            if not Bag.add(session.bag, id, qty) then
              return nil, "TM Case cannot preserve " .. tostring(sourceId) .. " x" .. qty
            end
            report.machineTransfers[#report.machineTransfers + 1] = {
              sourceId=sourceId, sourceLocation=location, quantity=qty,
              targetItemId=id, targetMoveId=Pokemon.moveFromTmItem(id),
              method=method,
            }
            report.items = report.items + 1
            report.itemUnits = report.itemUnits + qty
          elseif id and location == "pc" and addPcItem(storage, id, qty) then
            report.pcItems = report.pcItems + 1
          elseif id and location == "bag" and Bag.add(session.bag, id, qty) then
            report.items = report.items + 1
            report.itemUnits = report.itemUnits + qty
          else
            report.skippedItems[#report.skippedItems + 1] = {
              id=sourceId, quantity=qty, reason=id and (location .. "_full") or method,
            }
          end
        end
      end
      return true
    end
    local ok, err = transfer(sourceSave.inventory, "bag")
    if not ok then return nil, err end
    return transfer(sourceSave.pcItems, "pc")
  end

  local function importBadges(session, sourceSave, report)
    report.badges = 0
    report.badgeNames = {}
    report.fieldMoves = {}
    for index, badge in ipairs(BADGE_IMPORTS) do
      if sourceHasBadge(sourceSave, badge, index) then
        Flags.setBadge(session, index, true)
        completeLeader(session, badge, index, index <= 8)
        report.badges = report.badges + 1
        report.badgeNames[#report.badgeNames + 1] = badge.name
        report.fieldMoves[#report.fieldMoves + 1] = badge.fieldMove
      end
    end
  end

  local function importFlyVisits(session, sourceSave, report)
    session.visited = session.visited or {}
    report.flyDestinations = {}
    for sourceMap, target in pairs(FLY_VISITS) do
      if sourceSave.visited and sourceSave.visited[sourceMap] then
        session.visited[target.map] = true
        Flags.setFlag(session, nil, target.flag, true)
        report.flyDestinations[#report.flyDestinations + 1] = target.map
      end
    end
    table.sort(report.flyDestinations)
  end

  local function convertPlayTime(seconds)
    seconds = math.max(0, math.floor(tonumber(seconds) or 0))
    local hours = math.min(999, math.floor(seconds / 3600))
    seconds = seconds - math.floor(seconds / 3600) * 3600
    return { hours = hours, minutes = math.floor(seconds / 60), seconds = seconds % 60 }
  end

  -- -----------------------------------------------------------------------
  -- Gen 1 -> FireRed position translation (v0.3.1)
  --
  -- RBY and FireRed both store avatar coordinates as map-cell X/Y values, but
  -- map ids and geometry are not identical.  Prefer explicit semantic aliases,
  -- then exact FR_<RBY_MAP> identities.  The requested source coordinate is
  -- always validated against FireRed's native mid-layout collision grid; when
  -- it is blocked/out of bounds we search deterministic Manhattan rings for the
  -- nearest clear floor tile.  Unknown maps fall back to the existing safe
  -- post-Pokedex Pallet start instead of producing an unusable save.

  local POSITION_ALIASES = {
    -- Pallet
    REDS_HOUSE_1F = "FR_PLAYERS_HOUSE_1F",
    REDS_HOUSE_2F = "FR_PLAYERS_HOUSE_2F",
    BLUES_HOUSE = "FR_RIVALS_HOUSE",
    OAKS_LAB = "FR_OAKS_LAB",

    -- Pokemon Centers / route facilities
    VIRIDIAN_POKECENTER = "FR_VIRIDIAN_CITY_POKEMON_CENTER_1F",
    PEWTER_POKECENTER = "FR_PEWTER_CITY_POKEMON_CENTER_1F",
    CERULEAN_POKECENTER = "FR_CERULEAN_CITY_POKEMON_CENTER_1F",
    LAVENDER_POKECENTER = "FR_LAVENDER_TOWN_POKEMON_CENTER_1F",
    VERMILION_POKECENTER = "FR_VERMILION_CITY_POKEMON_CENTER_1F",
    CELADON_POKECENTER = "FR_CELADON_CITY_POKEMON_CENTER_1F",
    FUCHSIA_POKECENTER = "FR_FUCHSIA_CITY_POKEMON_CENTER_1F",
    SAFFRON_POKECENTER = "FR_SAFFRON_CITY_POKEMON_CENTER_1F",
    CINNABAR_POKECENTER = "FR_CINNABAR_ISLAND_POKEMON_CENTER_1F",
    MT_MOON_POKECENTER = "FR_ROUTE4_POKEMON_CENTER_1F",
    ROCK_TUNNEL_POKECENTER = "FR_ROUTE10_POKEMON_CENTER_1F",
    UNDERGROUND_PATH_ROUTE_8 = "FR_UNDERGROUND_PATH_EAST_ENTRANCE",
    UNDERGROUND_PATH_WEST_EAST = "FR_UNDERGROUND_PATH_EAST_WEST_TUNNEL",
    UNDERGROUND_PATH_ROUTE_7 = "FR_UNDERGROUND_PATH_WEST_ENTRANCE",
    LAVENDER_POKECENTER = "FR_LAVENDER_TOWN_POKEMON_CENTER_1F",
    LAVENDER_MART = "FR_LAVENDER_TOWN_MART",
    MR_FUJIS_HOUSE = "FR_LAVENDER_TOWN_VOLUNTEER_POKEMON_HOUSE",
    INDIGO_PLATEAU_LOBBY = "FR_INDIGO_PLATEAU_POKEMON_CENTER_1F",
    INDIGO_PLATEAU = "FR_INDIGO_PLATEAU_EXTERIOR",

    -- Gyms / marts where FRLG adds the town name to the engine id.
    VIRIDIAN_GYM = "FR_VIRIDIAN_CITY_GYM",
    PEWTER_GYM = "FR_PEWTER_CITY_GYM",
    CERULEAN_GYM = "FR_CERULEAN_CITY_GYM",
    VERMILION_GYM = "FR_VERMILION_CITY_GYM",
    CELADON_GYM = "FR_CELADON_CITY_GYM",
    FUCHSIA_GYM = "FR_FUCHSIA_CITY_GYM",
    SAFFRON_GYM = "FR_SAFFRON_CITY_GYM",
    CINNABAR_GYM = "FR_CINNABAR_ISLAND_GYM",
    VIRIDIAN_MART = "FR_VIRIDIAN_CITY_MART",
    PEWTER_MART = "FR_PEWTER_CITY_MART",
    CERULEAN_MART = "FR_CERULEAN_CITY_MART",
    LAVENDER_MART = "FR_LAVENDER_TOWN_MART",
    VERMILION_MART = "FR_VERMILION_CITY_MART",
    FUCHSIA_MART = "FR_FUCHSIA_CITY_MART",
    SAFFRON_MART = "FR_SAFFRON_CITY_MART",
    CINNABAR_MART = "FR_CINNABAR_ISLAND_MART",

    -- Named buildings whose remake names changed.
    BILLS_HOUSE = "FR_ROUTE25_SEA_COTTAGE",
    DAYCARE = "FR_ROUTE5_POKEMON_DAY_CARE",
    BIKE_SHOP = "FR_CERULEAN_CITY_BIKE_SHOP",
    COPYCATS_HOUSE_1F = "FR_SAFFRON_CITY_COPYCATS_HOUSE_1F",
    COPYCATS_HOUSE_2F = "FR_SAFFRON_CITY_COPYCATS_HOUSE_2F",
    FIGHTING_DOJO = "FR_SAFFRON_CITY_DOJO",
    MR_PSYCHICS_HOUSE = "FR_SAFFRON_CITY_MR_PSYCHICS_HOUSE",
    NAME_RATERS_HOUSE = "FR_LAVENDER_TOWN_HOUSE1",
    POKEMON_FAN_CLUB = "FR_VERMILION_CITY_POKEMON_FAN_CLUB",

    -- Vermilion's three ordinary houses are semantic remaps in FireRed rather
    -- than name-preserving maps.  Keep these explicit so source saves inside
    -- the Old Rod, Spearow<->Farfetch'd trade, or Pidgey houses do not fall
    -- through to the Pallet safety start.
    VERMILION_OLD_ROD_HOUSE = "FR_VERMILION_CITY_HOUSE1",
    VERMILION_TRADE_HOUSE = "FR_VERMILION_CITY_HOUSE2",
    VERMILION_PIDGEY_HOUSE = "FR_VERMILION_CITY_HOUSE3",

    -- Slice 3 route facilities and the RBY composite S.S. Anne maps.
    UNDERGROUND_PATH_ROUTE_5 = "FR_UNDERGROUND_PATH_NORTH_ENTRANCE",
    UNDERGROUND_PATH_NORTH_SOUTH = "FR_UNDERGROUND_PATH_NORTH_SOUTH_TUNNEL",
    UNDERGROUND_PATH_ROUTE_6 = "FR_UNDERGROUND_PATH_SOUTH_ENTRANCE",
    VERMILION_DOCK = "FR_SSANNE_EXTERIOR",
    SS_ANNE_1F = "FR_SSANNE_1F_CORRIDOR",
    SS_ANNE_1F_ROOMS = "FR_SSANNE_1F_CORRIDOR",
    SS_ANNE_2F = "FR_SSANNE_2F_CORRIDOR",
    SS_ANNE_2F_ROOMS = "FR_SSANNE_2F_CORRIDOR",
    SS_ANNE_3F = "FR_SSANNE_3F_CORRIDOR",
    SS_ANNE_BOW = "FR_SSANNE_DECK",
    SS_ANNE_B1F = "FR_SSANNE_B1F_CORRIDOR",
    SS_ANNE_B1F_ROOMS = "FR_SSANNE_B1F_CORRIDOR",
    SS_ANNE_KITCHEN = "FR_SSANNE_KITCHEN",
    SS_ANNE_CAPTAINS_ROOM = "FR_SSANNE_CAPTAINS_OFFICE",
    ROUTE_11_GATE_1F = "FR_ROUTE11_EAST_ENTRANCE_1F",
    ROUTE_11_GATE_2F = "FR_ROUTE11_EAST_ENTRANCE_2F",

    WARDENS_HOUSE = "FR_FUCHSIA_CITY_WARDENS_HOUSE",
    SAFARI_ZONE_GATE = "FR_FUCHSIA_CITY_SAFARI_ZONE_ENTRANCE",

    -- Department store / Game Corner.
    CELADON_MART_1F = "FR_CELADON_CITY_DEPARTMENT_STORE_1F",
    CELADON_MART_2F = "FR_CELADON_CITY_DEPARTMENT_STORE_2F",
    CELADON_MART_3F = "FR_CELADON_CITY_DEPARTMENT_STORE_3F",
    CELADON_MART_4F = "FR_CELADON_CITY_DEPARTMENT_STORE_4F",
    CELADON_MART_5F = "FR_CELADON_CITY_DEPARTMENT_STORE_5F",
    CELADON_MART_ROOF = "FR_CELADON_CITY_DEPARTMENT_STORE_ROOF",
    CELADON_MART_ELEVATOR = "FR_CELADON_CITY_DEPARTMENT_STORE_ELEVATOR",
    GAME_CORNER = "FR_CELADON_CITY_GAME_CORNER",
    GAME_CORNER_PRIZE_ROOM = "FR_CELADON_CITY_GAME_CORNER_PRIZE_ROOM",
    CELADON_POKECENTER = "FR_CELADON_CITY_POKEMON_CENTER_1F",
    CELADON_DINER = "FR_CELADON_CITY_RESTAURANT",
    CELADON_MANSION_1F = "FR_CELADON_CITY_CONDOMINIUMS_1F",
    CELADON_MANSION_2F = "FR_CELADON_CITY_CONDOMINIUMS_2F",
    CELADON_MANSION_3F = "FR_CELADON_CITY_CONDOMINIUMS_3F",
    CELADON_MANSION_ROOF = "FR_CELADON_CITY_CONDOMINIUMS_ROOF",
    CELADON_MANSION_ROOF_HOUSE = "FR_CELADON_CITY_CONDOMINIUMS_ROOF_ROOM",
    ROUTE_16_GATE_1F = "FR_ROUTE16_NORTH_ENTRANCE_1F",
    ROUTE_16_GATE_2F = "FR_ROUTE16_NORTH_ENTRANCE_2F",
    ROUTE_16_FLY_HOUSE = "FR_ROUTE16_HOUSE",

    -- Lab rooms map to their closest FRLG semantic successors.
    CINNABAR_LAB = "FR_CINNABAR_ISLAND_POKEMON_LAB_ENTRANCE",
    CINNABAR_LAB_TRADE_ROOM = "FR_CINNABAR_ISLAND_POKEMON_LAB_LOUNGE",
    CINNABAR_LAB_METRONOME_ROOM = "FR_CINNABAR_ISLAND_POKEMON_LAB_RESEARCH_ROOM",
    CINNABAR_LAB_FOSSIL_ROOM = "FR_CINNABAR_ISLAND_POKEMON_LAB_EXPERIMENT_ROOM",

    -- Elite Four rooms gained a PokemonLeague prefix.
    LORELEIS_ROOM = "FR_POKEMON_LEAGUE_LORELEIS_ROOM",
    BRUNOS_ROOM = "FR_POKEMON_LEAGUE_BRUNOS_ROOM",
    AGATHAS_ROOM = "FR_POKEMON_LEAGUE_AGATHAS_ROOM",
    LANCES_ROOM = "FR_POKEMON_LEAGUE_LANCES_ROOM",
    CHAMPIONS_ROOM = "FR_POKEMON_LEAGUE_CHAMPIONS_ROOM",
    HALL_OF_FAME = "FR_POKEMON_LEAGUE_HALL_OF_FAME",

    -- Viridian Forest gate houses are separate Route 2 maps in FRLG.
    VIRIDIAN_FOREST_SOUTH_GATE = "FR_ROUTE2_VIRIDIAN_FOREST_SOUTH_ENTRANCE",
    VIRIDIAN_FOREST_NORTH_GATE = "FR_ROUTE2_VIRIDIAN_FOREST_NORTH_ENTRANCE",

    -- Diglett's Cave entrance houses were renamed; cave itself is handled by
    -- the direct FR_ candidate when present.
    DIGLETTS_CAVE_ROUTE_2 = "FR_DIGLETTS_CAVE_NORTH_ENTRANCE",
    DIGLETTS_CAVE_ROUTE_11 = "FR_DIGLETTS_CAVE_SOUTH_ENTRANCE",
  }

  local function mapCellSize(def)
    if not def then return 0, 0 end
    local layout = def.midLayout
    if layout and layout.width and layout.height then
      return tonumber(layout.width) or 0, tonumber(layout.height) or 0
    end
    -- Game3 native map width/height are metatile dimensions before midLayout
    -- is attached; each metatile expands to 2x2 walk cells.
    return (tonumber(def.width) or 0) * 2, (tonumber(def.height) or 0) * 2
  end

  local function objectOccupies(def, x, y)
    for _, obj in ipairs((def and def.objects) or {}) do
      if tonumber(obj.x) == x and tonumber(obj.y) == y then return true end
    end
    return false
  end

  local function warpOccupies(def, x, y)
    for _, warp in ipairs((def and def.warps) or {}) do
      if tonumber(warp.x) == x and tonumber(warp.y) == y then return true end
    end
    return false
  end

  local function ensureLayout(game, mapId, def)
    if def and def.midLayout then return def.midLayout end
    local ok, Map = pcall(require, "src.core.game3.map")
    if ok and Map and Map.ensureMidLayout then
      return Map.ensureMidLayout(game, mapId, def)
    end
    return def and def.midLayout
  end

  local function walkableAndClear(game, mapId, x, y, allowWarp)
    local maps = game and game.data and game.data.maps
    local def = maps and maps[mapId]
    if not def then return false end
    local layout = ensureLayout(game, mapId, def)
    if not layout or not layout.collAt then return false end
    local w, h = mapCellSize(def)
    if x < 0 or y < 0 or x >= w or y >= h then return false end

    local coll = layout:collAt(x, y)
    local okP, Permissions = pcall(require, "src.world.gen2.Permissions")
    if okP and Permissions then
      if Permissions.isLedge and Permissions.isLedge(coll) then return false end
      if Permissions.isWater and Permissions.isWater(coll) then return false end
      if Permissions.isWalkable and not Permissions.isWalkable(coll) then return false end
    else
      if coll == nil or coll == 0x07 or coll == 0xff or coll == 0x29 then return false end
    end

    -- Do not spawn inside an event object or directly on a warp unless the
    -- entire map leaves us no better option.
    if objectOccupies(def, x, y) then return false end
    if not allowWarp and warpOccupies(def, x, y) then return false end
    return true
  end

  -- A collision byte alone is not enough for safe placement. Decorative fence
  -- and scenery cells can be encoded as land while remaining isolated from the
  -- map's actual walking network. Build the component reachable from doorways
  -- (and outdoor connection edges) and only accept cells in that component.
  local function trustedWalkableCells(game, mapId, def)
    local w, h = mapCellSize(def)
    local trusted, queue, head = {}, {}, 1
    local function key(x, y) return y * w + x end
    local function seed(x, y)
      if x >= 0 and y >= 0 and x < w and y < h
          and not trusted[key(x, y)]
          and walkableAndClear(game, mapId, x, y, false) then
        trusted[key(x, y)] = true
        queue[#queue + 1] = {x, y}
      end
    end
    for _, warp in ipairs(def.warps or {}) do
      local x, y = tonumber(warp.x), tonumber(warp.y)
      if x and y then seed(x, y - 1);seed(x, y + 1);seed(x - 1, y);seed(x + 1, y) end
    end
    if type(def.connections) == "table" and next(def.connections) ~= nil then
      for x = 0, w - 1 do seed(x, 0);seed(x, h - 1) end
      for y = 0, h - 1 do seed(0, y);seed(w - 1, y) end
    end
    if #queue == 0 then return nil end
    while head <= #queue do
      local p = queue[head];head = head + 1
      seed(p[1] + 1, p[2]);seed(p[1] - 1, p[2]);seed(p[1], p[2] + 1);seed(p[1], p[2] - 1)
    end
    return trusted, w
  end

  local function nearestSafeCell(game, mapId, wantX, wantY, requireTrusted)
    local maps = game and game.data and game.data.maps
    local def = maps and maps[mapId]
    if not def then return nil end
    ensureLayout(game, mapId, def)
    local w, h = mapCellSize(def)
    if w <= 0 or h <= 0 then return nil end
    if requireTrusted == nil then requireTrusted = true end
    local trusted, trustedWidth
    if requireTrusted then trusted, trustedWidth = trustedWalkableCells(game, mapId, def) end
    local function safe(x, y, allowWarp)
      if not walkableAndClear(game, mapId, x, y, allowWarp) then return false end
      return not trusted or trusted[y * trustedWidth + x] == true
    end

    wantX = math.max(0, math.min(w - 1, math.floor(tonumber(wantX) or 0)))
    wantY = math.max(0, math.min(h - 1, math.floor(tonumber(wantY) or 0)))
    if safe(wantX, wantY, false) then
      return wantX, wantY, 0, false
    end

    for radius = 1, w + h do
      for dx = -radius, radius do
        local dy = radius - math.abs(dx)
        local candidates = dy == 0
          and { { wantX + dx, wantY } }
          or { { wantX + dx, wantY - dy }, { wantX + dx, wantY + dy } }
        for _, p in ipairs(candidates) do
          local x, y = p[1], p[2]
          if x >= 0 and y >= 0 and x < w and y < h
              and safe(x, y, false) then
            return x, y, radius, true
          end
        end
      end
    end

    -- Tiny interiors can be nearly all warp cells. Permit one only as a final
    -- fallback, preferring the closest legal floor/warp cell.
    local bestX, bestY, bestD
    for y = 0, h - 1 do
      for x = 0, w - 1 do
        if safe(x, y, true) then
          local d = math.abs(x - wantX) + math.abs(y - wantY)
          if not bestD or d < bestD then bestX, bestY, bestD = x, y, d end
        end
      end
    end
    if bestX then return bestX, bestY, bestD, true end
    return nil
  end

  local function entrySeed(game, mapId)
    local maps = game and game.data and game.data.maps
    local def = maps and maps[mapId]
    if not def then return 0, 0 end
    ensureLayout(game, mapId, def)
    for _, warp in ipairs(def.warps or {}) do
      local wx, wy = tonumber(warp.x), tonumber(warp.y)
      if wx and wy then
        local around = { {wx, wy - 1}, {wx, wy + 1}, {wx - 1, wy}, {wx + 1, wy} }
        for _, p in ipairs(around) do
          if walkableAndClear(game, mapId, p[1], p[2], false) then
            return p[1], p[2]
          end
        end
      end
    end
    local w, h = mapCellSize(def)
    return math.floor(w / 2), math.floor(h / 2)
  end

  local function resolveTargetMap(game, sourceMap)
    local maps = game and game.data and game.data.maps
    if not maps or type(sourceMap) ~= "string" then return nil, "missing_map_data" end

    local alias = POSITION_ALIASES[sourceMap]
    if alias and maps[alias] then return alias, "alias" end

    local direct = "FR_" .. sourceMap
    if maps[direct] then return direct, "direct" end

    -- MapCatalog's generated ids preserve pret's Route3/House1 spelling: it
    -- splits lower->Upper boundaries but does not insert an underscore before
    -- a digit.  Gen 1 ids use ROUTE_3, so try the compact route form too.
    local compact = direct:gsub("^FR_ROUTE_(%d+)", "FR_ROUTE%1")
    if maps[compact] then return compact, "compact_route" end

    -- MapCatalog knows every FireRed map identity generated from the ROM.  A
    -- source name that already resembles the pret name may resolve here after
    -- underscore/case normalization in future engine builds.
    local okC, Catalog = pcall(require, "src.import.gba.map_catalog")
    if okC and Catalog and Catalog.resolve then
      local resolved = Catalog.resolve(sourceMap)
      if type(resolved) == "string" and maps[resolved] then
        return resolved, "catalog"
      end
    end

    return nil, "unmapped"
  end

  local function pokemonCenterDoorSeed(game, sourceSave, targetMap)
    local player = sourceSave and sourceSave.player or {}
    local lastOutdoor = sourceSave and sourceSave.lastOutdoor
    local lastHeal = sourceSave and sourceSave.lastHeal
    if type(lastOutdoor) ~= "table" or type(lastHeal) ~= "table"
        or tostring(lastOutdoor.id or "") ~= tostring(player.map or "")
        or type(lastHeal.map) ~= "string" or not lastHeal.map:match("POKECENTER$") then
      return nil
    end
    local px, py = tonumber(player.x), tonumber(player.y)
    local ox, oy = tonumber(lastOutdoor.x), tonumber(lastOutdoor.y)
    if not (px and py and ox and oy) then return nil end
    local dx, dy = px - ox, py - oy
    -- lastOutdoor is the source doorway landmark. Preserve the local offset
    -- around it instead of treating the two cities' absolute grids as equal.
    if math.abs(dx) + math.abs(dy) > 12 then return nil end
    local centerMap = resolveTargetMap(game, lastHeal.map)
    if not centerMap then return nil end
    local def = game and game.data and game.data.maps and game.data.maps[targetMap]
    for _, warp in ipairs((def and def.warps) or {}) do
      if warp.destMap == centerMap or warp.map == centerMap or warp.mapId == centerMap then
        local wx, wy = tonumber(warp.x), tonumber(warp.y)
        if wx and wy then
          local x, y = nearestSafeCell(game, targetMap, wx + dx, wy + dy)
          if x then return x, y, "pokemon_center_landmark" end
        end
      end
    end
    return nil
  end

  local function resolveLegacyPosition(game, sourceSave)
    local p = sourceSave and sourceSave.player or {}
    local sourceMap = p.map
    if type(sourceMap) ~= "string" or sourceMap == "" then
      return nil, { fallback = true, reason = "source_save_has_no_map" }
    end

    local targetMap, mapMethod = resolveTargetMap(game, sourceMap)
    if not targetMap then
      return nil, { fallback = true, reason = "unmapped_source_map", sourceMap = sourceMap }
    end

    local sourceX = tonumber(p.x)
    local sourceY = tonumber(p.y)
    local wantX, wantY = sourceX, sourceY
    local mode = "local"
    local doorX, doorY, doorMode = pokemonCenterDoorSeed(game, sourceSave, targetMap)
    if doorX then
      wantX, wantY, mode = doorX, doorY, doorMode
    elseif wantX == nil or wantY == nil then
      wantX, wantY = entrySeed(game, targetMap)
      mode = "entry"
    end

    local x, y, distance, adjusted = nearestSafeCell(game, targetMap, wantX, wantY)
    if x == nil then
      -- A valid semantic map with no resolvable landing is treated exactly like
      -- an unknown map: retain the known-safe Pallet start.
      return nil, {
        fallback = true, reason = "no_safe_landing", sourceMap = sourceMap,
        targetMap = targetMap, mapMethod = mapMethod,
      }
    end

    local facing = p.facing
    if facing ~= "up" and facing ~= "down" and facing ~= "left" and facing ~= "right" then
      facing = "down"
    end

    return {
      map = targetMap, x = x, y = y, facing = facing,
    }, {
      fallback = false,
      sourceMap = sourceMap, sourceX = sourceX, sourceY = sourceY,
      targetMap = targetMap, targetX = x, targetY = y,
      requestedX = wantX, requestedY = wantY,
      mapMethod = mapMethod, mode = mode,
      adjusted = adjusted and true or false,
      correctionDistance = distance or 0,
    }
  end

  local function importHallOfFame(session, sourceSave, report, completed)
    local history = sourceSave.hallOfFame
    if type(history) ~= "table" or next(history) == nil then
      report.hallOfFameTeams = 0
      -- Some older source saves retain the completed Champion/world state but
      -- omit the optional team-history payload. Preserve native game-clear
      -- semantics without fabricating a roster the source cannot prove.
      if completed then session.game_cleared = true end
      return
    end
    local keys = {}
    for key, team in pairs(history) do
      if type(team) == "table" then keys[#keys + 1] = key end
    end
    table.sort(keys, function(a, b) return (tonumber(a) or 0) < (tonumber(b) or 0) end)
    local converted = {}
    for _, key in ipairs(keys) do
      local team = history[key]
      local record = {}
      local monKeys = {}
      for monKey, mon in pairs(team) do if type(mon) == "table" then monKeys[#monKeys + 1] = monKey end end
      table.sort(monKeys, function(a, b) return (tonumber(a) or 0) < (tonumber(b) or 0) end)
      for _, monKey in ipairs(monKeys) do
        local mon = team[monKey]
        local species = Pokemon.speciesFromName(tostring(mon.species or "")) or tonumber(mon.species)
        if species then
          record[#record + 1] = {
            species = species,
            level = clamp(mon.level or 1, 1, 100),
            nickname = normalName(mon.nickname or Pokemon.name(species), Pokemon.name(species)),
            trainerId = tonumber(session.trainerId) or 0,
          }
        end
      end
      if #record > 0 then converted[#converted + 1] = record end
    end
    if #converted > 0 then
      session.hallOfFameTeams = converted
      session.hasHallOfFameRecords = true
      session.game_cleared = true
      session.hofDebutHours = tonumber(session.playTimeHours or session.hours) or 0
      session.hofDebutMinutes = tonumber(session.playTimeMinutes or session.minutes) or 0
      session.hofDebutSeconds = tonumber(session.playTimeSeconds or session.seconds) or 0
      session.hofDebutTime = string.format("%d:%02d:%02d", session.hofDebutHours, session.hofDebutMinutes, session.hofDebutSeconds)
    end
    report.hallOfFameTeams = #converted
  end

  local function buildImportedSession(game, source, sourceSave)
    local player = sourceSave.player or {}
    local imported = Schema.newGame({
      name = normalName(player.name, "RED"),
      rivalName = normalName(player.rival, "BLUE"),
      gender = 0,
      engineOptions = game and game.options,
    })
    -- Finalize the FireRed owner identity before any Pokemon are converted.
    -- All imported Pokemon are native-owned by this trainer; source OT fields
    -- remain audit metadata only and never drive obedience or trainer memos.
    imported.name = normalName(player.name, imported.name or "RED")
    imported.rivalName = normalName(player.rival, imported.rivalName or "BLUE")
    imported.trainerId = math.floor(clamp(player.id or imported.trainerId, 0, 65535))
    imported.secretId = math.floor(clamp(imported.secretId or imported.otSecretId or 0, 0, 65535))
    local report = {
      schema = 1,
      source = { game = source.version, slotId = source.slotId },
      party = 0, boxed = 0,
      dexSeen = 0, dexOwned = 0, items = 0, itemUnits = 0, pcItems = 0,
      skippedMons = {}, skippedMoves = {}, skippedItems = {},
    }

    local ok, monErr = importPokemon(imported, sourceSave, report)
    if not ok then return nil, monErr end
    importDex(imported, sourceSave, report)
    local itemsOk, itemsErr = importItems(imported, sourceSave, report)
    if not itemsOk then return nil, itemsErr end

    imported.money = clamp(sourceSave.money or imported.money, 0, 999999)
    imported.coins = clamp(sourceSave.coins or imported.coins, 0, 9999)
    imported.playtime = convertPlayTime(sourceSave.playTime)

    -- The embedded resolver -> planner -> applier replaces the old coarse
    -- post-Pokedex baseline. It writes only canonical reviewed-slice state and
    -- stops before SaveData creates a slot when a structural branch is unsafe.
    imported.map = "FR_PALLET_TOWN"
    imported.x, imported.y, imported.facing = 16, 14, "down"
    imported.healMap, imported.healX, imported.healY = "FR_PLAYERS_HOUSE_1F", 8, 5
    local openingProgress, progressFailure = ProgressPipeline.run(imported, sourceSave, source.version)
    if not openingProgress then
      local plan = progressFailure and progressFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(progressFailure and progressFailure.writerError or "unknown progress error")
      return nil, "Opening progress conversion blocked -- " .. detail
    end
    local starterRecord = openingProgress.canonical.events["PALLET.STARTER_CHOICE"] or {}
    local rivalRecord = openingProgress.canonical.events["PALLET.RIVAL_STARTER_BRANCH"] or {}
    local sourceStarter = starterRecord.status == "completed" and starterRecord.value or nil
    -- FireRed has no Pikachu/Eevee rival table. Yellow retains Pikachu as the
    -- actual imported starter; Squirtle is only the internal compatibility
    -- branch, selecting the rival's Venusaur line for every native script.
    local fireRedStarterBranch = sourceStarter == "pikachu" and "squirtle" or sourceStarter
    local inherited = {
      playerStarter = fireRedStarterBranch,
      sourceStarter = sourceStarter,
      rivalStarter = rivalRecord.status == "completed" and rivalRecord.value or nil,
      daycarePayloadConverted = report.daycare and report.daycare.transferred == 1,
    }
    report.starter = {
      source = sourceStarter,
      sourceRival = inherited.rivalStarter,
      fireRedCompatibilityBranch = fireRedStarterBranch,
      grantedReplacement = false,
    }
    local ceruleanProgress, ceruleanFailure = CeruleanProgressPipeline.run(
      imported, sourceSave, source.version, inherited)
    if not ceruleanProgress then
      local plan = ceruleanFailure and ceruleanFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(ceruleanFailure and ceruleanFailure.writerError or "unknown progress error")
      return nil, "Mt. Moon/Cerulean progress conversion blocked -- " .. detail
    end
    inherited.bicycleAcquired = (ceruleanProgress.canonical.events["CERULEAN.BICYCLE_ACQUIRED"] or {}).status == "completed"
    inherited.flashGiftCompleted = (openingProgress.canonical.events["ROUTE2.FLASH_GIFT"] or {}).status == "completed"
    local vermilionProgress, vermilionFailure = VermilionProgressPipeline.run(
      imported, sourceSave, source.version, inherited)
    if not vermilionProgress then
      local plan = vermilionFailure and vermilionFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(vermilionFailure and vermilionFailure.writerError or "unknown progress error")
      return nil, "Route 5/Vermilion progress conversion blocked -- " .. detail
    end
    -- Pokemon collection import completed transactionally above. Therefore a
    -- claimed source Eevee (including one later evolved, traded, or released)
    -- has had every extant collection payload processed before its gift ball
    -- is hidden in FireRed.
    inherited.eeveePayloadConverted = true
    inherited.fuchsiaSlicePresent = true
    local pokeFluteProgress, pokeFluteFailure = PokeFluteProgressPipeline.run(
      imported, sourceSave, source.version, inherited)
    if not pokeFluteProgress then
      local plan = pokeFluteFailure and pokeFluteFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(pokeFluteFailure and pokeFluteFailure.writerError or "unknown progress error")
      return nil, "Route 9/Poke Flute progress conversion blocked -- " .. detail
    end
    local fuchsiaProgress, fuchsiaFailure = FuchsiaProgressPipeline.run(
      imported, sourceSave, source.version, inherited)
    if not fuchsiaProgress then
      local plan = fuchsiaFailure and fuchsiaFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(fuchsiaFailure and fuchsiaFailure.writerError or "unknown progress error")
      return nil, "Poke Flute/Fuchsia progress conversion blocked -- " .. detail
    end
    -- Pokemon import has already reconciled every surviving collection entry.
    -- Gift progress therefore remains valid even when the originally received
    -- Hitmon or Lapras was later evolved (where applicable), traded, or released.
    inherited.hitmonGiftReconciled = true
    inherited.laprasGiftReconciled = true
    local saffronProgress, saffronFailure = SaffronProgressPipeline.run(
      imported, sourceSave, source.version, inherited)
    if not saffronProgress then
      local plan = saffronFailure and saffronFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(saffronFailure and saffronFailure.writerError or "unknown progress error")
      return nil, "Saffron progress conversion blocked -- " .. detail
    end
    inherited.surfAccess = (fuchsiaProgress.canonical.events["SAFARI_ZONE.HM03_SURF_REWARD"] or {}).status == "completed"
    -- The collection transaction above has already reconciled any revived
    -- Omanyte, Kabuto, or Aerodactyl that still exists in party or storage.
    inherited.fossilPayloadReconciled = true
    local cinnabarProgress, cinnabarFailure = CinnabarProgressPipeline.run(
      imported, sourceSave, source.version, inherited)
    if not cinnabarProgress then
      local plan = cinnabarFailure and cinnabarFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(cinnabarFailure and cinnabarFailure.writerError or "unknown progress error")
      return nil, "Seafoam/Power Plant/Cinnabar progress conversion blocked -- " .. detail
    end
    local championProgress, championFailure = ChampionProgressPipeline.run(
      imported, sourceSave, source.version, inherited)
    if not championProgress then
      local plan = championFailure and championFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(championFailure and championFailure.writerError or "unknown progress error")
      return nil, "Viridian/Champion progress conversion blocked -- " .. detail
    end
    inherited.hallOfFameComplete =
      (championProgress.canonical.events["POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE"] or {}).status == "completed"
    local caveProgress, caveFailure = CeruleanCaveProgressPipeline.run(
      imported, sourceSave, source.version, inherited)
    if not caveProgress then
      local plan = caveFailure and caveFailure.plan
      local first = plan and plan.blockers and plan.blockers[1]
      local detail = first and (first.code .. ": " .. first.message)
        or tostring(caveFailure and caveFailure.writerError or "unknown progress error")
      return nil, "Cerulean Cave progress conversion blocked -- " .. detail
    end
    -- Verify the final consumable TM inventory after every story writer.
    -- HM access is durable story state, so only owned HM quantities are a minimum.
    local expectedMachines = {}
    for _, entry in ipairs(report.machineTransfers) do
      expectedMachines[entry.targetItemId] = (expectedMachines[entry.targetItemId] or 0) + entry.quantity
    end
    for id = ItemsData.FIRST_TM, ItemsData.LAST_HM do
      local qty = expectedMachines[id] or 0
      if (qty > 0 and not Bag.has(imported.bag, id, qty))
          or (id < ItemsData.FIRST_TM + 50 and Bag.has(imported.bag, id, qty + 1)) then
        return nil, "Machine inventory verification failed for item " .. id
      end
    end
    report.machineInventoryVerified = true
    report.progress = {
      sliceId = "KANTO_RBY_STORY_AND_POSTGAME_COMPLETE",
      resolverVersion = "lua-1.0.0",
      planVersion = "lua-1.0.0",
      eventCount = openingProgress.canonical.summary.eventCount + ceruleanProgress.canonical.summary.eventCount
        + vermilionProgress.canonical.summary.eventCount + pokeFluteProgress.canonical.summary.eventCount
        + fuchsiaProgress.canonical.summary.eventCount + saffronProgress.canonical.summary.eventCount
        + cinnabarProgress.canonical.summary.eventCount + championProgress.canonical.summary.eventCount
        + caveProgress.canonical.summary.eventCount,
      statusCounts = {
        opening = openingProgress.canonical.summary.statusCounts,
        cerulean = ceruleanProgress.canonical.summary.statusCounts,
        vermilion = vermilionProgress.canonical.summary.statusCounts,
        pokeFlute = pokeFluteProgress.canonical.summary.statusCounts,
        fuchsia = fuchsiaProgress.canonical.summary.statusCounts,
        saffron = saffronProgress.canonical.summary.statusCounts,
        cinnabar = cinnabarProgress.canonical.summary.statusCounts,
        champion = championProgress.canonical.summary.statusCounts,
        ceruleanCave = caveProgress.canonical.summary.statusCounts,
      },
      operations = openingProgress.writer.applied + ceruleanProgress.writer.applied
        + vermilionProgress.writer.applied + pokeFluteProgress.writer.applied + fuchsiaProgress.writer.applied
        + saffronProgress.writer.applied + cinnabarProgress.writer.applied + championProgress.writer.applied
        + caveProgress.writer.applied,
      verified = openingProgress.writer.verified == true and ceruleanProgress.writer.verified == true
        and vermilionProgress.writer.verified == true and pokeFluteProgress.writer.verified == true
        and fuchsiaProgress.writer.verified == true and saffronProgress.writer.verified == true
        and cinnabarProgress.writer.verified == true and championProgress.writer.verified == true
        and caveProgress.writer.verified == true,
      audits = {
        opening = openingProgress.plan.audits,
        cerulean = ceruleanProgress.plan.audits,
        vermilion = vermilionProgress.plan.audits,
        pokeFlute = pokeFluteProgress.plan.audits,
        fuchsia = fuchsiaProgress.plan.audits,
        saffron = saffronProgress.plan.audits,
        cinnabar = cinnabarProgress.plan.audits,
        champion = championProgress.plan.audits,
        ceruleanCave = caveProgress.plan.audits,
      },
      slices = {
        opening = {
          sliceId = openingProgress.canonical.sliceId,
          eventCount = openingProgress.canonical.summary.eventCount,
          operations = openingProgress.writer.applied,
        },
        cerulean = {
          sliceId = ceruleanProgress.canonical.sliceId,
          eventCount = ceruleanProgress.canonical.summary.eventCount,
          operations = ceruleanProgress.writer.applied,
        },
        vermilion = {
          sliceId = vermilionProgress.canonical.sliceId,
          eventCount = vermilionProgress.canonical.summary.eventCount,
          operations = vermilionProgress.writer.applied,
        },
        pokeFlute = {
          sliceId = pokeFluteProgress.canonical.sliceId,
          eventCount = pokeFluteProgress.canonical.summary.eventCount,
          operations = pokeFluteProgress.writer.applied,
        },
        fuchsia = {
          sliceId = fuchsiaProgress.canonical.sliceId,
          eventCount = fuchsiaProgress.canonical.summary.eventCount,
          operations = fuchsiaProgress.writer.applied,
        },
        saffron = {
          sliceId = saffronProgress.canonical.sliceId,
          eventCount = saffronProgress.canonical.summary.eventCount,
          operations = saffronProgress.writer.applied,
        },
        cinnabar = {
          sliceId = cinnabarProgress.canonical.sliceId,
          eventCount = cinnabarProgress.canonical.summary.eventCount,
          operations = cinnabarProgress.writer.applied,
        },
        champion = {
          sliceId = championProgress.canonical.sliceId,
          eventCount = championProgress.canonical.summary.eventCount,
          operations = championProgress.writer.applied,
        },
        ceruleanCave = {
          sliceId = caveProgress.canonical.sliceId,
          eventCount = caveProgress.canonical.summary.eventCount,
          operations = caveProgress.writer.applied,
        },
      },
    }
    importHallOfFame(imported, sourceSave, report, inherited.hallOfFameComplete)
    importBadges(imported, sourceSave, report)
    importFlyVisits(imported, sourceSave, report)
    local legacyPosition, positionReport = resolveLegacyPosition(game, sourceSave)
    local sourcePositionMap = tostring(player.map or "")
    local sourceWasOnDepartedShip = sourcePositionMap == "VERMILION_DOCK"
      or sourcePositionMap:match("^SS_ANNE") ~= nil
    if sourceWasOnDepartedShip
      and (vermilionProgress.canonical.events["SS_ANNE.SHIP_DEPARTED"] or {}).status == "completed" then
      legacyPosition = {map="FR_VERMILION_CITY",x=23,y=33,facing="down"}
      positionReport = {
        fallback=false,sourceMap=player.map,targetMap="FR_VERMILION_CITY",targetX=23,targetY=33,
        mapMethod="canonical_ship_departure",mode="fixed_anchor",adjusted=true,correctionDistance=0,
      }
    end
    local sourceInSafari = sourcePositionMap:match("^SAFARI_ZONE_") ~= nil
      and sourcePositionMap ~= "SAFARI_ZONE_GATE"
    if sourceInSafari then
      legacyPosition = {map="FR_FUCHSIA_CITY_SAFARI_ZONE_ENTRANCE",x=4,y=6,facing="up"}
      positionReport = {
        fallback=false,sourceMap=player.map,targetMap=legacyPosition.map,targetX=4,targetY=6,
        mapMethod="canonical_safari_session_reset",mode="fixed_anchor",adjusted=true,correctionDistance=0,
      }
    end
    local sourceInSilph = sourcePositionMap:match("^SILPH_CO_") ~= nil
    if sourceInSilph then
      legacyPosition = {map="FR_SAFFRON_CITY_POKEMON_CENTER_1F",x=7,y=4,facing="down"}
      positionReport = {
        fallback=false,sourceMap=player.map,targetMap=legacyPosition.map,targetX=7,targetY=4,
        mapMethod="canonical_silph_runtime_reset",mode="fixed_anchor",adjusted=true,correctionDistance=0,
      }
    end
    local sourceInLeague = sourcePositionMap == "HALL_OF_FAME"
      or sourcePositionMap == "CHAMPIONS_ROOM" or sourcePositionMap == "LANCES_ROOM"
      or sourcePositionMap == "AGATHAS_ROOM" or sourcePositionMap == "BRUNOS_ROOM"
      or sourcePositionMap == "LORELEIS_ROOM"
    if sourceInLeague and (championProgress.canonical.events["POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE"] or {}).status == "completed" then
      legacyPosition = {map="FR_INDIGO_PLATEAU_POKEMON_CENTER_1F",x=7,y=4,facing="down"}
      positionReport = {
        fallback=false,sourceMap=player.map,targetMap=legacyPosition.map,targetX=7,targetY=4,
        mapMethod="canonical_hall_of_fame_reset",mode="fixed_anchor",adjusted=true,correctionDistance=0,
      }
    end
    local sourceInCeruleanCave = sourcePositionMap:match("^CERULEAN_CAVE_") ~= nil
    if sourceInCeruleanCave then
      legacyPosition = {map="FR_CERULEAN_CITY_POKEMON_CENTER_1F",x=7,y=4,facing="down"}
      positionReport = {
        fallback=false,sourceMap=player.map,targetMap=legacyPosition.map,targetX=7,targetY=4,
        mapMethod="canonical_cerulean_cave_gate_reset",mode="fixed_anchor",adjusted=true,correctionDistance=0,
      }
    end
    if legacyPosition then
      imported.map = legacyPosition.map
      imported.x = legacyPosition.x
      imported.y = legacyPosition.y
      imported.facing = legacyPosition.facing
    end
    report.position = positionReport

    imported.modData = imported.modData or {}
    imported.modData.firered_legacy_importer = {
      imported = true,
      version = "1.5.2",
      repairEvidence = RepairEvidence.capture(imported,Flags),
      source = report.source,
      report = report,
      policy = {
        story = "canonical_complete_rby_story_and_cerulean_cave_resolvers_rule_planners_and_verified_in_memory_writer",
        pokemonOwnership = "all_gen1_imports_use_the_imported_firered_trainer_identity",
        pokemonMemo = "legacy_imports_show_nature_without_fabricated_encounter_or_trade_origin",
        daycare = "single_rby_deposit_realizes_pending_exp_and_moves_to_firered_pc",
        yellowStarter = "pikachu_retained_squirtle_branch_routes_native_rival_scripts_without_granting_a_replacement",
        position = "rby_map_crosswalk_plus_nearest_safe_firered_cell",
        badges = "rby_badges_to_native_firered_badge_flags",
        fieldMoves = "native_firered_badge_gates_and_imported_party_moves",
        flyDestinations = "rby_visited_towns_to_firered_fly_towns",
        gen1KeyItems = "audit_only",
        dvs = "linear_0_15_to_0_31",
        statExp = "sqrt_then_proportional_510_ev_cap",
        identity = "pid_enforces_dv_shininess_preserving_nature_gender_and_ability_slot",
        ppUps = "two_bits_per_surviving_move_in_ppBonusesPacked",
        historicalRepairs = "immutable_import_snapshot_only",
      },
    }
    return imported, report
  end

  local function performImport(game, source)
    local sourceSave, activeId, readErr = readActive(source.version)
    if not sourceSave then return nil, readErr or "could not read source slot" end
    source.slotId = activeId
    local imported, reportOrErr = buildImportedSession(game, source, sourceSave)
    if not imported then return nil, reportOrErr end
    local saveTable = Schema.toSaveTable(imported)
    local ok,slotId = Persistence.commit(SaveData,game,saveTable,imported,
      "LEGACY " .. normalName(imported.name,"RED"))
    if not ok then return nil,slotId end
    logInfo(("Imported %s/%s -> firered/%s: party=%d boxed=%d")
      :format(source.version, tostring(source.slotId), tostring(slotId),
        reportOrErr.party, reportOrErr.boxed))
    return true, slotId
  end

  -- -----------------------------------------------------------------------
  -- FireRed boot-menu bridge
  --
  -- 0.2.62 raises the in-field START hook, but not a title/main-menu hook.
  -- Boot is intentionally a module, however, and mods load before Boot.new().
  -- Wrap its update/draw pair to add a real pre-game KANTO LEGACY entry and a
  -- Project-Celebi-style source list. NEW GAME and CONTINUE still delegate to
  -- the untouched native implementations.

  local Boot = require("src.ui.game3.boot")
  local Window = require("src.ui.game3.window")
  local Audio = require("src.core.game3.audio")
  local Display = require("src.core.game3.display")
  local originalBootUpdate = Boot.update
  local originalBootDraw = Boot.draw
  local originalContinueInfo = Boot.continueInfoFromSave
  if originalContinueInfo then
    Boot.continueInfoFromSave = function(save)
      repairLegacyState(save)
      return originalContinueInfo(save)
    end
  end

  local MENU_BG = { 139 / 255, 148 / 255, 1 }
  local TEXT = { fg = { 98 / 255, 98 / 255, 98 / 255, 1 },
    shadow = { 213 / 255, 213 / 255, 205 / 255, 1 }, bg = { 1, 1, 1, 1 } }
  local ACCENT = { fg = { 4 / 31, 16 / 31, 1, 1 },
    shadow = TEXT.shadow, bg = TEXT.bg }

  local function bootChoices(state)
    if state.hasContinue then
      return { "CONTINUE", "NEW GAME", "KANTO LEGACY", "EXIT" }
    end
    return { "NEW GAME", "KANTO LEGACY", "EXIT" }
  end

  local function pressed(input, key)
    return input and input.wasPressed and input:wasPressed(key)
  end

  local function confirmed(input)
    return pressed(input, "a") or pressed(input, "start")
  end

  local function stableBootMenu(state)
    local fade = state.menuFade
    return state.phase == Boot.PHASE.MENU and not state.saveError
      and not state.fadeThen and not (fade and fade.fadeActive and fade:fadeActive())
  end

  local function openSourceChooser(state)
    state._kliChooser = { sources = detectSources(), index = 1, error = nil }
  end

  Boot.update = function(state, input, dt)
    if not stableBootMenu(state) then return originalBootUpdate(state, input, dt) end
    local chooser = state._kliChooser
    if chooser then
      if chooser.error then
        if pressed(input,"a") or pressed(input,"b") then
          chooser.error,chooser.errorOffset=nil,nil
        elseif pressed(input,"down") then
          chooser.errorOffset=math.min((chooser.errorOffset or 0)+1,
            math.max(0,math.ceil(#tostring(chooser.error)/30)-6))
        elseif pressed(input,"up") then
          chooser.errorOffset=math.max(0,(chooser.errorOffset or 0)-1)
        end
        return nil
      end
      local n = #chooser.sources
      if pressed(input, "b") then
        Audio.playSe(9)
        state._kliChooser = nil
      elseif pressed(input, "up") and n > 0 then
        chooser.index = ((chooser.index - 2) % n) + 1
        chooser.error = nil
        Audio.playSe(5)
      elseif pressed(input, "down") and n > 0 then
        chooser.index = (chooser.index % n) + 1
        chooser.error = nil
        Audio.playSe(5)
      elseif confirmed(input) and n > 0 then
        Audio.playSe(5)
        local called, ok, result = pcall(performImport,liveGame,chooser.sources[chooser.index])
        if not called then result,ok=ok,nil end
        if not ok then
          chooser.error = tostring(result)
          logWarn("Kanto Legacy import failed: " .. chooser.error)
        end
      end
      return nil
    end

    local choices = bootChoices(state)
    state._kliIndex = clamp(state._kliIndex or state.menuIndex or 1, 1, #choices)
    if pressed(input, "up") then
      state._kliIndex = ((state._kliIndex - 2) % #choices) + 1
      Audio.playSe(5)
      return nil
    elseif pressed(input, "down") then
      state._kliIndex = (state._kliIndex % #choices) + 1
      Audio.playSe(5)
      return nil
    elseif confirmed(input) then
      local choice = choices[state._kliIndex]
      if choice == "KANTO LEGACY" then
        Audio.playSe(5)
        openSourceChooser(state)
        return nil
      end
      local nativeIndex = choice == "CONTINUE" and 1
        or choice == "NEW GAME" and (state.hasContinue and 2 or 1)
        or (state.hasContinue and 3 or 2)
      state.menuIndex = nativeIndex
      return originalBootUpdate(state, input, dt)
    elseif pressed(input, "b") then
      state.menuIndex = 1
      return originalBootUpdate(state, input, dt)
    end
    return nil
  end

  local function printRow(label, x, y, selected, right)
    Window.printPx((selected and "> " or "  ") .. label, x, y, { colors = selected and ACCENT or TEXT })
    if right and right ~= "" then
      Window.printPx(right, x + 122, y, { colors = selected and ACCENT or TEXT })
    end
  end

  local function drawCustomMain(state)
    love.graphics.clear(MENU_BG[1], MENU_BG[2], MENU_BG[3], 1)
    local info = state.continueInfo or {}
    local frameType = tonumber(info.frameType) or 0
    local choices = bootChoices(state)
    state._kliIndex = clamp(state._kliIndex or 1, 1, #choices)
    if state.hasContinue then
      Window.userFrame(Window.template(3, 1, 24, 8), frameType)
      Window.printPx("PLAYER  " .. tostring(info.name or ""), 26, 26, { colors = ACCENT })
      Window.printPx(string.format("TIME    %d:%02d", info.hours or 0, info.minutes or 0), 26, 42, { colors = ACCENT })
      Window.printPx(string.format("DEX %d   BADGES %d", info.dexCount or 0, info.badges or 0), 26, 58, { colors = ACCENT })
      local ys = { 10, 82, 106, 130 }
      local templates = { nil, 10, 13, 16 }
      for i = 2, 4 do Window.userFrame(Window.template(3, templates[i], 24, 2), frameType) end
      printRow("CONTINUE", 26, ys[1], state._kliIndex == 1)
      for i = 2, #choices do printRow(choices[i], 26, ys[i], state._kliIndex == i) end
    else
      local rows = { 1, 5, 9 }
      local ys = { 10, 42, 74 }
      for i = 1, 3 do
        Window.userFrame(Window.template(3, rows[i], 24, 2), frameType)
        printRow(choices[i], 26, ys[i], state._kliIndex == i)
      end
    end
  end

  local function drawSourceChooser(state)
    love.graphics.clear(MENU_BG[1], MENU_BG[2], MENU_BG[3], 1)
    local chooser = state._kliChooser
    Window.userFrame(Window.template(2, 1, 26, 2), 0)
    Window.printPx("KANTO LEGACY", 18, 10, { colors = ACCENT })
    if chooser.error then
      Window.userFrame(Window.template(2,5,26,12),0)
      local message=tostring(chooser.error):gsub("[\r\n]"," ")
      local offset=chooser.errorOffset or 0
      for line=0,5 do
        local start=(offset+line)*30+1
        Window.printPx(message:sub(start,start+29),18,42+line*14,{colors=ACCENT})
      end
      Window.printPx("UP/DOWN:DETAILS A/B:BACK",18,Display.H-10,{colors=TEXT})
      return
    end
    if #chooser.sources == 0 then
      Window.userFrame(Window.template(2, 5, 26, 4), 0)
      Window.printPx("NO ACTIVE GEN 1 SAVES", 18, 42, { colors = TEXT })
      Window.printPx("RED / BLUE / YELLOW", 18, 58, { colors = TEXT })
    else
      for i, source in ipairs(chooser.sources) do
        local tileY = 5 + (i - 1) * 4
        local y = 42 + (i - 1) * 32
        Window.userFrame(Window.template(2, tileY, 26, 3), 0)
        printRow(source.version:upper() .. "  " .. source.name, 18, y,
          chooser.index == i, string.format("%dB", source.badges or 0))
        Window.printPx(string.format("%s  %d POKEMON", source.timeText, source.monCount or 0),
          34, y + 16, { colors = chooser.index == i and ACCENT or TEXT })
      end
    end
    Window.printPx("A:IMPORT   B:BACK", 42, Display.H - 10, { colors = TEXT })
  end

  Boot.draw = function(state)
    if stableBootMenu(state) then
      if state._kliChooser then drawSourceChooser(state) else drawCustomMain(state) end
      return
    end
    return originalBootDraw(state)
  end

  -- Standalone Game3 0.2.62 has neither a Fly executor nor a field table.
  -- Derive missing landing points from the ROM-extracted outdoor door warps.
  local FLY_ORDER = {
    "PALLET_TOWN", "VIRIDIAN_CITY", "PEWTER_CITY", "CERULEAN_CITY",
    "LAVENDER_TOWN", "VERMILION_CITY", "CELADON_CITY", "FUCHSIA_CITY",
    "CINNABAR_ISLAND", "INDIGO_PLATEAU", "SAFFRON_CITY",
  }

  local function prepareFlyData(game)
    if not (game and game.data) then return end
    local data = game.data
    data.field = data.field or {}
    local field = data.field
    field.flyOrder, field.flyWarps = field.flyOrder or {}, field.flyWarps or {}
    local listed = {}
    for _, id in ipairs(field.flyOrder) do listed[id] = true end
    for _, town in ipairs(FLY_ORDER) do
      local id = FLY_VISITS[town].map
      local def = data.maps and data.maps[id]
      if def then
        if not listed[id] then field.flyOrder[#field.flyOrder + 1] = id; listed[id] = true end
        if not field.flyWarps[id] then
          local door = town == "PALLET_TOWN" and "FR_PLAYERS_HOUSE_1F"
            or "FR_" .. town .. "_POKEMON_CENTER_1F"
          for _, warp in ipairs(def.warps or {}) do
            if warp.destMap == door and tonumber(warp.x) and tonumber(warp.y) then
              -- Pallet's house canopy covers the first tile below the door;
              -- land one tile farther out so the returning player is visible.
              field.flyWarps[id] = { x = warp.x, y = warp.y + (town == "PALLET_TOWN" and 2 or 1), facing = "down" }
              break
            end
          end
        end
      end
    end
  end

  local Field = require("src.core.game3.field")
  local Stack = require("src.ui.game3.stack")
  local Fly = { open = false }
  local nativeExecute = Field.executeFieldMove
  local nativeMapLoad = require("src.core.game3.map").load

  -- Track towns reached after import, as the standalone engine does not update
  -- session.visited. Do not grant unvisited destinations from story baseline flags.
  require("src.core.game3.map").load = function(engineMod, game, mapId, opts)
    local result, err = nativeMapLoad(engineMod, game, mapId, opts)
    if result then
      local session = Field.getSession()
      local legacy = session and session.modData and session.modData.firered_legacy_importer
      local field = game and game.data and game.data.field
      if legacy and legacy.imported and field and field.flyWarps[mapId] then
        session.visited = session.visited or {}
        session.visited[mapId] = true
      end
    end
    return result, err
  end

  local RegionMap = require("src.ui.game3.region_map")
  local RegionExtract = require("src.import.gba.region_map_extract")
  local FLY_REGION_LOCATIONS = {
    FR_PALLET_TOWN={x=4,y=11,mapsec="MAPSEC_PALLET_TOWN"},
    FR_VIRIDIAN_CITY={x=4,y=8,mapsec="MAPSEC_VIRIDIAN_CITY"},
    FR_PEWTER_CITY={x=4,y=4,mapsec="MAPSEC_PEWTER_CITY"},
    FR_CERULEAN_CITY={x=14,y=3,mapsec="MAPSEC_CERULEAN_CITY"},
    FR_LAVENDER_TOWN={x=18,y=6,mapsec="MAPSEC_LAVENDER_TOWN"},
    FR_VERMILION_CITY={x=14,y=9,mapsec="MAPSEC_VERMILION_CITY"},
    FR_CELADON_CITY={x=11,y=6,mapsec="MAPSEC_CELADON_CITY"},
    FR_FUCHSIA_CITY={x=12,y=12,mapsec="MAPSEC_FUCHSIA_CITY"},
    FR_CINNABAR_ISLAND={x=4,y=14,mapsec="MAPSEC_CINNABAR_ISLAND"},
    FR_INDIGO_PLATEAU_EXTERIOR={x=2,y=3,mapsec="MAPSEC_INDIGO_PLATEAU"},
    FR_SAFFRON_CITY={x=14,y=6,mapsec="MAPSEC_SAFFRON_CITY"},
  }
  local function resolveFlyRegionLocation(mapId)
    local fixed = FLY_REGION_LOCATIONS[mapId]
    if fixed then return fixed end
    if type(RegionExtract.resolveLocation) == "function" then
      local ok, loc = pcall(RegionExtract.resolveLocation, mapId)
      if ok and type(loc) == "table" and tonumber(loc.x) and tonumber(loc.y) then return loc end
    end
    return nil
  end
  local Effects = require("src.core.game3.field_effects")
  local Fade = require("src.ui.game3.fade")
  local Player = require("src.core.game3.player")
  local Font = require("src.ui.game3.frlg_font")
  local nativeMapInput, nativeMapDraw = RegionMap.handleInput, RegionMap.draw
  local nativeEffectsStep = Effects.step
  local Flight = { active = false }
  local Hud = require("src.ui.game3.hud")
  local StartMenu = require("src.ui.game3.start_menu")
  local nativeMenuOpen, nativeBusy = Hud.isMenuOpen, Hud.busy
  if nativeMenuOpen then
    -- Runtime 0.2.66 pauses Field.update for menus. The flight input guard
    -- must block controls without pausing its own field animation.
    Hud.isMenuOpen = function(...)
      if Flight.active then return false end
      return nativeMenuOpen(...)
    end
    Hud.busy = function(...) return Flight.active or nativeBusy(...) end
  end
  function Flight.handleInput() end -- modal input guard while scripts/effects keep ticking
  function Flight.draw() end

  local function finishFlight()
    Flight.active = false
    Flight.anim = nil
    Player.setVisible(true)
    Stack.pop("kanto_legacy_flight")
    local Space = require("src.core.game3.scripting.space")
    if not Space._pendingOnFrame and not (Space.vm and Space.vm:isRunning()) then Field.unlock() end
  end

  local function trackBird()
    Flight.anim = Effects._anims[#Effects._anims]
    -- Native effects use world coordinates. Start offscreen and finish relative
    -- to the avatar, rather than flying to world Y=-50 on every map.
    Flight.anim.py = Flight.anim.targetPy - 112
  end

  Effects.step = function(...)
    local anim = Flight.active and Flight.anim
    if anim and (anim.state == "ascend" or anim.state == "leave")
        and anim.py <= anim.targetPy - 112 then
      anim.py = -51 -- finish native effect on this tick, after it has left view
    end
    nativeEffectsStep(...)
    if Flight.active and Flight.anim == anim and anim then
      if anim.kind == "fly_takeoff" and anim.state == "ascend" then Player.setVisible(false) end
      if anim.kind == "fly_landing" and anim.state == "leave" then Player.setVisible(true) end
    end
  end

  local function startFlight(id, x, y, spot)
    if StartMenu.isOpen() then StartMenu.close() end
    Flight.active = true
    Field.lock()
    Stack.push("kanto_legacy_flight", Flight, { hideBelow = false })
    Audio.playSe(40)
    Effects.startFlyTakeoff(function()
      Flight.anim = nil
      Fade.begin(Fade.MODE.TO_BLACK, 1, function()
        Player.biking, Player.surfing, Player.surfHopping, Player.dismounting = false, false, false, false
        Fly.session.biking, Fly.session.surfing = false, false
        local result, err = require("src.core.game3.map").load(Field._mod, Fly.game, id,
          { x = x, y = y, facing = spot.facing or "down", via = "fly" })
        if not result then
          logWarn("Fly arrival failed: " .. tostring(err))
          Fade.begin(Fade.MODE.FROM_BLACK, 1, finishFlight)
          return
        end
        Player.setVisible(false)
        Fade.begin(Fade.MODE.FROM_BLACK, 1, function()
          Audio.playSe(40)
          Effects.startFlyLanding(finishFlight)
          trackBird()
        end)
      end)
    end)
    trackBird()
  end

  function Fly.close()
    Fly.open = false
    if Fly.wasLocked then Field.lock() else Field.unlock() end
  end

  function Fly.selectedDestination()
    local row = RegionExtract.KANTO_GRID[RegionMap.cursorY]
    local sec = row and row[RegionMap.cursorX]
    return sec and Fly.bySection[sec]
  end

  RegionMap.handleInput = function(input)
    if not Fly.open then return nativeMapInput(input) end
    if pressed(input, "a") then
      local id = Fly.selectedDestination()
      if not id then Audio.playSe(9); Fly.error = "CANNOT FLY HERE"; return end
      local spot = Fly.game.data.field.flyWarps[id]
      -- Fly destinations are curated native coordinates; they only need the
      -- collision/object check, not import-coordinate connectivity repair.
      local x, y = nearestSafeCell(Fly.game, id, spot.x, spot.y, false)
      if x == nil then Audio.playSe(9); Fly.error = "NO SAFE LANDING"; return end
      RegionMap.close() -- runs Fly.close; flight then owns the input guard
      local loc = resolveFlyRegionLocation(id)
      if type(Field.flyTo) == "function" and loc and loc.mapsec then
        -- Gen1Recomp 0.3.x owns the complete FRLG Fly sequence. This uses its
        -- current startFlyOut/startFlyIn effects without binding the mod to
        -- either the old or new private animation API.
        if StartMenu.isOpen() then StartMenu.close() end
        Field.flyTo(loc.mapsec, Fly.mon)
      else
        -- 0.2.62-0.2.66 compatibility path.
        startFlight(id, x, y, spot)
      end
      return
    end
    Fly.error = nil
    return nativeMapInput(input)
  end

  RegionMap.draw = function()
    if not RegionMap.isOpen() then return end
    if not Fly.open then return nativeMapDraw() end
    -- The compatibility picker is drawn on top of the engine's own Town Map.
    -- No decoded ROM image is distributed by this mod.
    nativeMapDraw()
    local g = love.graphics
    local frame = math.floor(love.timer.getTime() * 3) % 2 + 1
    -- Retail grid cell centers are (36 + 8*x, 36 + 8*y).
    for _, id in ipairs(Fly.destinations) do
      local loc = resolveFlyRegionLocation(id)
      if loc then
        g.setColor(frame == 1 and 1 or 0.35, 0.15, 0.15, 1)
        g.rectangle("fill", 31 + loc.x * 8, 31 + loc.y * 8, 10, 10)
        g.setColor(1, 1, 1, 1)
        g.rectangle("line", 31 + loc.x * 8, 31 + loc.y * 8, 10, 10)
      end
    end
    -- Keep the southern islands visible: all controls live in the top bar.
    g.setColor(0.12, 0.43, 0.73, 1)
    g.rectangle("fill", 0, 0, Display.W, 16)
    g.setColor(1, 1, 1, 1)
    Font.draw(Fly.error or RegionMap.currentLocationName() or "KANTO", 3, 2,
      { colors = Font.COLOR.WHITE, small = true })
    Font.draw("A:FLY B:BACK", 164, 2, { colors = Font.COLOR.WHITE, small = true })
  end

  Field.executeFieldMove = function(payload)
    if Flight.active then return end
    if not (payload and payload.ok and payload.action == "fly") then
      return nativeExecute(payload)
    end
    local game, session = Field._game or liveGame, Field.getSession()
    if not (game and session) then return nativeExecute(payload) end
    if type(Field.flyTo) == "function" and type(RegionMap.inputReady) == "function" then
      -- Gen1Recomp 0.3.x provides the complete ROM-cache-backed Fly map and
      -- flight sequence. Use it directly, including its visited filtering,
      -- animations, transitions and quest-log behavior.
      local wasLocked = Field.locked
      Field.lock()
      RegionMap.show({
        session = session,
        mode = "fly",
        onPick = function(section)
          if StartMenu.isOpen() then StartMenu.close() end
          Field.flyTo(section, payload.mon)
        end,
        onClose = function()
          if wasLocked then Field.lock() else Field.unlock() end
        end,
      })
      return
    end
    prepareFlyData(game)
    Fly.game, Fly.session, Fly.mon, Fly.index, Fly.error = game, session, payload.mon, 1, nil
    Fly.destinations = {}
    Fly.bySection = {}
    local used = {}
    for _, id in ipairs(game.data.field.flyOrder) do
      local warp = game.data.field.flyWarps[id]
      local def = game.data.maps[id]
      if not used[id] and session.visited and session.visited[id]
          and id:sub(1, 3) == "FR_" and def and warp
          and tonumber(warp.x) and tonumber(warp.y) then
        Fly.destinations[#Fly.destinations + 1] = id
        local loc = resolveFlyRegionLocation(id)
        if loc and loc.mapsec then Fly.bySection[loc.mapsec] = id end
        used[id] = true
      end
    end
    Fly.wasLocked = Field.locked
    Field.lock()
    Fly.open = true
    RegionMap.show({ session = session, onClose = Fly.close })
  end

  mod.events:on("game.ready", function(e)
    liveGame = e and e.game or e
    prepareFlyData(liveGame)
    repairLegacyState(liveGame and liveGame.session)
    -- 0.2.62 stores the native GBA classification as mapDef.mapType, while
    -- PartyMenu passes mapDef.type to FieldMoves. Supply the compatibility
    -- alias so outdoor Fly checks receive TOWN/CITY/ROUTE instead of nil.
    local maps = liveGame and liveGame.data and liveGame.data.maps
    for _, def in pairs(maps or {}) do
      if def.type == nil and def.mapType ~= nil then def.type = def.mapType end
    end
  end)
end

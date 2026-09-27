-- Kanto Legacy embedded final RBY postgame slice: Cerulean Cave and Mewtwo.
local Flags = require("src.core.game3.scripting.flags")

return function(data)
  assert(type(data) == "table" and data.evidence and data.rules,
    "Cerulean Cave progress data is missing")
  local P = {}
  local SLICE = "KANTO_CERULEAN_CAVE_COMPLETE"

  local function scalar(v)
    if v == true then return "true" elseif v == false then return "false" elseif v == nil then return "null" end
    return tostring(v)
  end
  local function lookup(snapshot, expr)
    local path, wanted = expr:match("^([^=]+)=(.+)$")
    path = path or expr
    local node = snapshot
    for part in path:gmatch("[^.]+") do
      if type(node) ~= "table" or node[part] == nil then return false, nil end
      node = node[part]
    end
    if wanted then return scalar(node):lower() == wanted:lower(), node end
    return node and true or false, node
  end
  local function contains(values, wanted)
    for _, value in ipairs(values or {}) do if value == wanted then return true end end
    return false
  end
  local function refs(rule, version)
    local out, seen = {}, {}
    local completed = rule.completedAny or {}
    for _, group in ipairs({ completed.all or {}, completed[version] or {} }) do
      for _, ref in ipairs(group) do
        if not seen[ref] then seen[ref] = true; out[#out + 1] = ref end
      end
    end
    return out
  end
  local function rec(status, confidence, value)
    local row = { status = status, confidence = confidence or "certain", evidence = {} }
    if value ~= nil then row.value = value end
    return row
  end
  local function done(events, id)
    return events[id] and events[id].status == "completed"
  end

  function P.resolve(snapshot, sourceVersion, inherited)
    inherited = inherited or {}
    local version = tostring(sourceVersion or snapshot.version or "unknown"):lower()
    local events, conflicts, normalizations = {}, {}, {}
    local current = tostring((snapshot.player or {}).map or "")
    local floors = { "CERULEAN_CAVE_1F", "CERULEAN_CAVE_2F", "CERULEAN_CAVE_B1F" }
    local activity = {}
    for _, floor in ipairs(floors) do
      activity[floor] = current == floor or (snapshot.visited or {})[floor] == true
    end
    for key, taken in pairs(snapshot.itemsTaken or {}) do
      if taken then
        for _, floor in ipairs(floors) do
          if key:sub(1, #floor + 1) == floor .. "_" then activity[floor] = true end
        end
      end
    end
    for key, taken in pairs(snapshot.hiddenTaken or {}) do
      if taken then
        for _, floor in ipairs(floors) do
          if key:sub(1, #floor + 1) == floor .. "_" then activity[floor] = true end
        end
      end
    end
    if lookup(snapshot, "flags.EVENT_BEAT_MEWTWO") then activity.CERULEAN_CAVE_B1F = true end
    local hallOfFame = (type(snapshot.hallOfFame) == "table" and next(snapshot.hallOfFame) ~= nil)
      or snapshot.postGameHomeOk == true or inherited.hallOfFameComplete == true

    for _, floor in ipairs(floors) do
      events["VISIT." .. floor] = rec(activity[floor] and "completed" or "unseen", "strong")
    end
    events["CERULEAN_CAVE.ACCESS"] = rec(hallOfFame and "completed" or "unseen", "strong")

    for _, rule in ipairs(data.evidence.eventRules) do
      local id = rule.eventId
      if not events[id] and id ~= "RBY_POSTGAME.COMPLETE" then
        if contains(rule.notApplicableVersions, version) then
          events[id] = rec("not_applicable")
        else
          local hits = {}
          for _, ref in ipairs(refs(rule, version)) do
            if lookup(snapshot, ref) then hits[#hits + 1] = ref end
          end
          if #hits > 0 then
            events[id] = rec("completed", "certain",
              id == "CERULEAN_CAVE.MEWTWO_RESOLVED" and "removed_outcome_unknown" or nil)
            events[id].evidence = hits
          else
            events[id] = rec(hallOfFame and "available" or "unseen", "strong")
          end
        end
      end
    end
    events["RBY_POSTGAME.COMPLETE"] = rec(
      done(events, "CERULEAN_CAVE.MEWTWO_RESOLVED") and "completed" or "available",
      "certain", done(events, "CERULEAN_CAVE.MEWTWO_RESOLVED") and "mewtwo_resolved" or "mewtwo_available")

    local counts = {}
    for _, row in pairs(events) do counts[row.status] = (counts[row.status] or 0) + 1 end
    return {
      schemaVersion = "1.0.0", sliceId = SLICE,
      provenance = { sourceGame = version, resolverVersion = "lua-1.0.0" },
      events = events, conflicts = conflicts, normalizations = normalizations,
      summary = { eventCount = #data.evidence.eventRules, statusCounts = counts, conflictCount = #conflicts },
    }
  end

  local function effect(operation)
    if operation.op == "set_flag" then return "true" end
    if operation.op == "clear_flag" then return "false" end
    return tostring(operation.op)
  end

  function P.plan(canonical, inherited)
    inherited = inherited or {}
    local events, operations, blockers, audits = canonical.events, {}, {}, {}
    local function add(operation, owner, reason)
      operations[#operations + 1] = {
        op = operation.op, symbol = operation.symbol, owner = owner, reason = reason,
      }
    end
    local function block(code, message)
      blockers[#blockers + 1] = { code = code, message = message }
    end
    for _, conflict in ipairs(canonical.conflicts or {}) do
      block("CANONICAL_CONFLICT", conflict.note or conflict.eventId or tostring(conflict))
    end
    for _, rule in ipairs(data.rules.eventRules) do
      local id, row = rule.eventId, events[rule.eventId]
      local disposition = rule.disposition
      if disposition ~= "location_only" and disposition ~= "audit_only" and disposition ~= "lossy_no_write" then
        if row.status == "unresolved" then
          block("UNRESOLVED_DIRECT_EVENT", id)
        else
          local selected = row.status == "completed" and rule.completeOperations or rule.availableOperations
          if selected then
            for _, operation in ipairs(selected) do add(operation, "event:" .. id, "canonical status:" .. row.status) end
          elseif rule.target then
            add({ op = row.status == "completed" and "set_flag" or "clear_flag", symbol = rule.target },
              "event:" .. id, "canonical status:" .. row.status)
          end
        end
      elseif disposition == "lossy_no_write" and row.status == "completed" then
        audits[#audits + 1] = { code = "SOURCE_HIDDEN_PICKUP_AUDIT_ONLY", message = id }
      end
    end

    local anyActivity = false
    for id, row in pairs(events) do
      if (id:match("^VISIT%.CERULEAN_CAVE") or id:match("^CERULEAN_CAVE_.+%."))
          and row.status == "completed" then anyActivity = true end
    end
    if anyActivity and inherited.hallOfFameComplete ~= true then
      block("HALL_OF_FAME_ACCESS_REQUIRED", "Cerulean Cave activity requires inherited Hall of Fame completion.")
    end
    if done(events, "CERULEAN_CAVE.MEWTWO_RESOLVED") and not done(events, "CERULEAN_CAVE.ACCESS") then
      block("MEWTWO_WITHOUT_CAVE_ACCESS", "Resolved Mewtwo requires Cerulean Cave access.")
    end
    local forbidden = { FLAG_SYS_CAN_LINK_WITH_RS = true, FLAG_HIDE_CERULEAN_CAVE_GUARD = true }
    for _, operation in ipairs(operations) do
      if forbidden[operation.symbol] then
        block("FIRERED_POSTGAME_GATE_WRITE", "Cerulean Cave slice must not write " .. operation.symbol)
      end
    end
    local unique, bySymbol = {}, {}
    for _, operation in ipairs(operations) do
      local prior = bySymbol[operation.symbol]
      if not prior then
        bySymbol[operation.symbol] = operation; unique[#unique + 1] = operation
      elseif effect(prior) ~= effect(operation) then
        block("CONTRADICTORY_WRITES", "Different writes target " .. operation.symbol)
      else
        audits[#audits + 1] = { code = "WRITE_DEDUPLICATED", message = operation.symbol }
      end
    end
    return {
      planVersion = "lua-1.0.0", sliceId = SLICE, readyToApply = #blockers == 0,
      operations = unique, blockers = blockers, audits = audits,
      summary = { operationCount = #unique, blockerCount = #blockers, auditCount = #audits },
    }
  end

  local function applyOne(session, operation)
    if not Flags.IDS[operation.symbol] then return nil, "unknown FireRed flag symbol: " .. operation.symbol end
    if operation.op == "set_flag" or operation.op == "clear_flag" then
      Flags.setFlag(session, nil, operation.symbol, operation.op == "set_flag")
      return true
    end
    return nil, "unsupported Cerulean Cave operation: " .. tostring(operation.op)
  end
  local function verify(session, operation)
    return Flags.getFlag(session, nil, operation.symbol) == (operation.op == "set_flag")
  end
  function P.apply(session, plan)
    if not plan.readyToApply then return nil, plan.blockers end
    for _, operation in ipairs(plan.operations) do
      local ok, err = applyOne(session, operation); if not ok then return nil, err end
    end
    for _, operation in ipairs(plan.operations) do
      if not verify(session, operation) then return nil, "post-write verification failed: " .. operation.symbol end
    end
    return { applied = #plan.operations, verified = true }
  end
  function P.run(session, snapshot, version, inherited)
    local canonical = P.resolve(snapshot, version, inherited)
    local plan = P.plan(canonical, inherited)
    if not plan.readyToApply then return nil, { canonical = canonical, plan = plan } end
    local writer, err = P.apply(session, plan)
    if not writer then return nil, { canonical = canonical, plan = plan, writerError = err } end
    return { canonical = canonical, plan = plan, writer = writer }
  end
  return P
end

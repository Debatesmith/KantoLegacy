-- Kanto Legacy embedded Stage 1-5 runtime for Mt. Moon through Cerulean.
-- The reviewed JSON tables are exported into progress_pipeline_cerulean_data.lua;
-- this module supplies the source resolver, target planner, writer and verifier.

local Flags = require("src.core.game3.scripting.flags")
local Bag = require("src.core.game3.bag")

return function(data)
  assert(type(data) == "table" and type(data.evidence) == "table" and type(data.rules) == "table",
    "Cerulean progress data is missing")

  local Pipeline = {}
  local SLICE_ID = "KANTO_MT_MOON_TO_CERULEAN_COMPLETE"
  local SUPPORTED_STARTERS = { bulbasaur=true, squirtle=true, charmander=true }
  local TRAINERS = {
    TRAINER_BUG_CATCHER_CALE=110, TRAINER_BUG_CATCHER_KENT=108,
    TRAINER_BUG_CATCHER_ROBBY=109, TRAINER_CAMPER_ETHAN=144,
    TRAINER_CAMPER_FLINT=471, TRAINER_CAMPER_SHANE=143,
    TRAINER_HIKER_FRANKLIN=182, TRAINER_HIKER_MARCOS=181,
    TRAINER_HIKER_NOB=183, TRAINER_HIKER_WAYNE=184,
    TRAINER_LASS_ALI=123, TRAINER_LASS_CRISSY=119, TRAINER_LASS_HALEY=125,
    TRAINER_LASS_IRIS=121, TRAINER_LASS_MIRIAM=120, TRAINER_LASS_RELI=122,
    TRAINER_LEADER_MISTY=415, TRAINER_PICNICKER_DIANA=150,
    TRAINER_PICNICKER_KELSEY=153, TRAINER_RIVAL_CERULEAN_BULBASAUR=333,
    TRAINER_RIVAL_CERULEAN_CHARMANDER=334, TRAINER_RIVAL_CERULEAN_SQUIRTLE=332,
    TRAINER_SUPER_NERD_JOVAN=169, TRAINER_SUPER_NERD_MIGUEL=170,
    TRAINER_SWIMMER_MALE_LUIS=234, TRAINER_TEAM_ROCKET_GRUNT=351,
    TRAINER_TEAM_ROCKET_GRUNT_2=352, TRAINER_TEAM_ROCKET_GRUNT_3=353,
    TRAINER_TEAM_ROCKET_GRUNT_4=354, TRAINER_TEAM_ROCKET_GRUNT_5=355,
    TRAINER_TEAM_ROCKET_GRUNT_6=356, TRAINER_YOUNGSTER_CHAD=95,
    TRAINER_YOUNGSTER_DAN=94, TRAINER_YOUNGSTER_JOEY=93,
    TRAINER_YOUNGSTER_JOSH=91, TRAINER_YOUNGSTER_TIMMY=92,
  }
  local ITEMS = {
    ITEM_SS_TICKET=265, ITEM_TM03=291, ITEM_TM28=316,
    ITEM_HELIX_FOSSIL=357, ITEM_DOME_FOSSIL=358,
    ITEM_BICYCLE=360, ITEM_FAME_CHECKER=363,
  }
  -- The decoder currently exposes no authoritative in-game-trade byte. The
  -- safe runtime policy is to leave the optional Jynx trade replayable; party
  -- and box conversion remains the sole owner of any existing Jynx.
  local SAFE_AVAILABLE = {
    ["VISIT.MT_MOON"] = true,
    ["CERULEAN.JYNX_TRADE"] = true,
  }

  local function contains(list, wanted)
    for _, value in ipairs(list or {}) do if value == wanted then return true end end
    return false
  end

  local function lookup(snapshot, expression)
    local path, expected = expression:match("^([^=]+)=(.+)$")
    path = path or expression
    local node = snapshot
    for part in path:gmatch("[^.]+") do
      if type(node) ~= "table" or node[part] == nil then return false, nil end
      node = node[part]
    end
    if expected ~= nil then return tostring(node):lower() == expected:lower(), node end
    return node and true or false, node
  end

  local function refsFor(rule, version)
    local refs, seen = {}, {}
    local groups = rule.completedAny or {}
    for _, group in ipairs({groups.all or {}, groups[version] or {}}) do
      for _, ref in ipairs(group) do
        if not seen[ref] then seen[ref]=true; refs[#refs+1]=ref end
      end
    end
    return refs
  end

  local function fossilValue(snapshot)
    local dome = lookup(snapshot,"flags.EVENT_GOT_DOME_FOSSIL")
    local helix = lookup(snapshot,"flags.EVENT_GOT_HELIX_FOSSIL")
    if dome and helix then return "both" end
    if dome then return "dome" end
    if helix then return "helix" end
    return "neither"
  end

  function Pipeline.resolve(snapshot, sourceVersion)
    local version = tostring(sourceVersion or snapshot.version or "unknown"):lower()
    local out = {
      schemaVersion="1.0.0", sliceId=SLICE_ID,
      provenance={sourceGame=version,resolverVersion="lua-1.0.0"},
      events={}, conflicts={}, summary={}
    }
    for _, rule in ipairs(data.evidence.eventRules) do
      local id, mode = rule.eventId, rule.mode
      local rec = {status="unresolved",confidence="none",evidence={}}
      if contains(rule.notApplicableVersions,version) then
        rec.status,rec.confidence="not_applicable","certain"
      elseif mode == "unresolved" then
        rec.note=rule.note
      else
        local refs=refsFor(rule,version)
        for _,ref in ipairs(refs) do if lookup(snapshot,ref) then rec.evidence[#rec.evidence+1]=ref end end
        if #rec.evidence > 0 then
          rec.status="completed"
          rec.confidence=(mode=="visit" or mode=="derived") and "strong" or "certain"
          if rule.value == "derive:fossil_choice" then rec.value=fossilValue(snapshot)
          elseif rule.value ~= nil then rec.value=rule.value end
        else
          local all=true
          if not rule.pendingAfterAll or #rule.pendingAfterAll==0 then all=false
          else
            for _,dep in ipairs(rule.pendingAfterAll) do
              if not out.events[dep] or out.events[dep].status~="completed" then all=false; break end
            end
          end
          local anyPending=false
          for _,dep in ipairs(rule.pendingAfter or {}) do
            if out.events[dep] and out.events[dep].status=="completed" then anyPending=true; break end
          end
          local anyAvailable=false
          for _,dep in ipairs(rule.availableAfter or {}) do
            if out.events[dep] and out.events[dep].status=="completed" then anyAvailable=true; break end
          end
          if all or anyPending then rec.status,rec.confidence="reward_pending","strong"
          elseif mode=="target_default" then rec.status,rec.confidence="not_applicable","certain"
          elseif anyAvailable then rec.status,rec.confidence="available","strong"
          elseif (mode=="exact" or mode=="visit" or mode=="choice") and #refs>0 then
            rec.status,rec.confidence="unseen","certain"
          end
        end
      end
      out.events[id]=rec
    end

    local required = {
      {"MT_MOON.DOME_FOSSIL_ACQUIRED","MT_MOON_B2F.SUPER_NERD_BATTLE"},
      {"MT_MOON.HELIX_FOSSIL_ACQUIRED","MT_MOON_B2F.SUPER_NERD_BATTLE"},
      {"CERULEAN_GYM.CASCADE_BADGE","CERULEAN_GYM.MISTY_BATTLE"},
      {"CERULEAN_GYM.TM_REWARD","CERULEAN_GYM.MISTY_BATTLE"},
      {"BILL.RESCUE_COMPLETED","BILL.CELL_SEPARATOR_OPERATED"},
      {"BILL.SS_TICKET_REWARD","BILL.RESCUE_COMPLETED"},
      {"CERULEAN.TM28_RECOVERY_REWARD","CERULEAN.ROCKET_THIEF_BATTLE"},
    }
    for _,pair in ipairs(required) do
      if out.events[pair[1]].status=="completed" and out.events[pair[2]].status~="completed" then
        out.conflicts[#out.conflicts+1]=pair[1].." completed without "..pair[2]
      end
    end
    if out.events["MT_MOON.DOME_FOSSIL_ACQUIRED"].status=="completed"
        and out.events["MT_MOON.HELIX_FOSSIL_ACQUIRED"].status=="completed" then
      out.conflicts[#out.conflicts+1]="Modified source save contains both Mt. Moon fossils."
    end
    local counts={}
    for _,rec in pairs(out.events) do counts[rec.status]=(counts[rec.status] or 0)+1 end
    out.summary={eventCount=#data.evidence.eventRules,statusCounts=counts,conflictCount=#out.conflicts}
    return out
  end

  local function suffix(id) return id:match("([^.]+)$") end
  local function splitPlain(value, separator)
    local result,start={},1
    while true do
      local first,last=value:find(separator,start,true)
      if not first then result[#result+1]=value:sub(start); break end
      result[#result+1]=value:sub(start,first-1); start=last+1
    end
    return result
  end
  local function trim(value) return (value:gsub("^%s+",""):gsub("%s+$","")) end

  local function termValue(term, aliases, context)
    term=trim(term)
    local game=term:match("^sourceGame == ([a-z]+)$")
    if game then return context.sourceGame==game end
    local games=term:match("^sourceGame in %[(.+)%]$")
    if games then for value in games:gmatch("[^,]+") do if context.sourceGame==trim(value) then return true end end; return false end
    if term=="neither applicable source encounter is completed" then
      for _,record in pairs(aliases) do if record.status=="completed" then return false end end
      return true
    end
    if term=="neither fossil acquisition completed" then
      return aliases.DOME_FOSSIL_ACQUIRED.status~="completed" and aliases.HELIX_FOSSIL_ACQUIRED.status~="completed"
    end
    local name,value=term:match("^([A-Z0-9_]+)%.value == ([a-z0-9_]+)$")
    if name then return aliases[name] and aliases[name].value==value end
    local choices
    name,choices=term:match("^([A-Z0-9_]+) in %[(.+)%]$")
    if name then for value in choices:gmatch("[^,]+") do if aliases[name].status==trim(value) then return true end end; return false end
    name=term:match("^([A-Z0-9_]+) not completed$")
    if name then return aliases[name] and aliases[name].status~="completed" end
    name=term:match("^([A-Z0-9_]+) completed$")
    if name then return aliases[name] and aliases[name].status=="completed" end
    error("unsupported Cerulean reducer predicate: "..term)
  end

  local function conditionValue(expression,aliases,context)
    for _,branch in ipairs(splitPlain(expression," or ")) do
      local yes=true
      for _,term in ipairs(splitPlain(branch," and ")) do if not termValue(term,aliases,context) then yes=false; break end end
      if yes then return true end
    end
    return false
  end

  local function effect(operation)
    if operation.op=="set_flag" or operation.op=="set_trainer_defeated" then return "true" end
    if operation.op=="clear_flag" or operation.op=="clear_trainer_defeated" then return "false" end
    if operation.op=="set_var" then return "var:"..tostring(operation.value) end
    if operation.op=="ensure_item" or operation.op=="remove_item" then return operation.op..":"..tostring(operation.quantity or 1) end
    return operation.op
  end

  function Pipeline.plan(canonical, inherited)
    inherited=inherited or {}
    local events=canonical.events
    local context={sourceGame=canonical.provenance.sourceGame,playerStarter=inherited.playerStarter}
    local operations,blockers,audits={},{},{}
    local function add(raw,owner,reason)
      operations[#operations+1]={op=raw.op,symbol=raw.symbol,value=raw.value,
        quantity=raw.quantity,owner=owner,reason=reason}
    end
    local function block(code,message) blockers[#blockers+1]={code=code,message=message} end
    local function audit(code,message) audits[#audits+1]={code=code,message=message} end
    for _,message in ipairs(canonical.conflicts or {}) do block("CANONICAL_CONFLICT",message) end

    for _,reducer in ipairs(data.rules.reducers) do
      local aliases={}
      for _,id in ipairs(reducer.inputs) do aliases[suffix(id)]=events[id] end
      local selected={}
      for _,case in ipairs(reducer.cases) do
        if conditionValue(case.when,aliases,context) then
          selected[#selected+1]=case.id
          for _,raw in ipairs(case.operations or {}) do add(raw,"reducer:"..reducer.id,"case:"..case.id) end
          local starter=context.playerStarter
          for _,raw in ipairs((case.valueOperations or {})[starter] or {}) do add(raw,"reducer:"..reducer.id,"case:"..case.id) end
          for _,raw in ipairs((case.valueOperationsByPlayerStarter or {})[starter] or {}) do add(raw,"reducer:"..reducer.id,"case:"..case.id) end
          if case.audit then audit("REDUCER_AUDIT",case.audit) end
          if case.blocker then block("REDUCER_BLOCKED_CASE",case.blocker) end
        end
      end
      audit("REDUCER_CASES",reducer.id..": "..(#selected>0 and table.concat(selected,",") or "none"))
    end

    for _,rule in ipairs(data.rules.eventRules) do
      local id,disposition=rule.eventId,rule.disposition
      local rec=events[id]
      if disposition=="lossy_no_write" or disposition=="external_subsystem" then
        audit("NO_DIRECT_WRITE",id.." is owned elsewhere or has no durable target equivalent.")
      elseif disposition~="reducer_input" and disposition~="location_only" then
        local status=rec.status
        if status=="unresolved" and not SAFE_AVAILABLE[id] then
          block("UNRESOLVED_DIRECT_EVENT",id.." has no safe target write.")
        elseif disposition=="target_default" and status=="completed" then
          block("TARGET_DEFAULT_COMPLETED",id.." cannot be completed from RBY evidence.")
        else
          if status=="unresolved" and SAFE_AVAILABLE[id] then
            status="unseen"; audit("SAFE_AVAILABLE_DEFAULT",id.." remains replayable because no durable source bit exists.")
          end
          local selected
          if status=="completed" and rule.completeOperations then selected=rule.completeOperations
          elseif status~="completed" and rule.availableOperations then selected=rule.availableOperations end
          if selected then
            for _,raw in ipairs(selected) do add(raw,"event:"..id,"canonical status:"..status) end
          elseif rule.target then
            local complete=status=="completed"
            local op
            if rule.profile=="trainer_base" then op=complete and "set_trainer_defeated" or "clear_trainer_defeated"
            else op=complete and "set_flag" or "clear_flag" end
            add({op=op,symbol=rule.target},"event:"..id,"canonical status:"..status)
          end
        end
      end
    end

    local misty=events["CERULEAN_GYM.MISTY_BATTLE"].status=="completed"
    local badge=events["CERULEAN_GYM.CASCADE_BADGE"].status=="completed"
    local tm=events["CERULEAN_GYM.TM_REWARD"].status=="completed"
    if misty~=badge or (tm and not misty) then block("MISTY_PROGRESS_COHERENCE","Misty victory, Cascade Badge, and TM reward evidence disagree.") end
    if events["CERULEAN.RIVAL_BATTLE"].status=="completed" and not SUPPORTED_STARTERS[context.playerStarter] then
      block("MISSING_INHERITED_STARTER_BRANCH","Cerulean rival completion needs Slice 1's supported starter branch.")
    end

    local unique,bySymbol={},{}
    for _,operation in ipairs(operations) do
      local prior=bySymbol[operation.symbol]
      if not prior then bySymbol[operation.symbol]=operation; unique[#unique+1]=operation
      elseif effect(prior)~=effect(operation) then
        block("CONTRADICTORY_WRITES","Different desired effects target "..operation.symbol..".")
      else audit("WRITE_DEDUPLICATED","Identical write deduplicated for "..operation.symbol..".") end
    end
    return {planVersion="lua-1.0.0",sliceId=SLICE_ID,readyToApply=#blockers==0,
      operations=unique,blockers=blockers,audits=audits,
      summary={operationCount=#unique,blockerCount=#blockers,auditCount=#audits}}
  end

  local function applyOne(session,operation)
    local kind,symbol=operation.op,operation.symbol
    if kind=="set_flag" or kind=="clear_flag" then
      if not Flags.IDS[symbol] then return nil,"unknown FireRed flag symbol: "..symbol end
      Flags.setFlag(session,nil,symbol,kind=="set_flag")
    elseif kind=="set_var" then
      if not Flags.VAR_IDS[symbol] then return nil,"unknown FireRed var symbol: "..symbol end
      Flags.setVar(session,nil,symbol,operation.value)
    elseif kind=="set_trainer_defeated" or kind=="clear_trainer_defeated" then
      local id=TRAINERS[symbol]; if not id then return nil,"unknown FireRed trainer symbol: "..symbol end
      Flags.setTrainerDefeated(session,nil,id,kind=="set_trainer_defeated")
    elseif kind=="ensure_item" then
      local id=ITEMS[symbol]; if not id then return nil,"unknown FireRed item symbol: "..symbol end
      if not Bag.has(session.bag,id,operation.quantity or 1)
          and not Bag.add(session.bag,id,operation.quantity or 1) then return nil,"no room for required item: "..symbol end
    elseif kind=="remove_item" then
      local id=ITEMS[symbol]; if not id then return nil,"unknown FireRed item symbol: "..symbol end
      if Bag.has(session.bag,id,1) then Bag.remove(session.bag,id,operation.quantity or 1) end
    else return nil,"unsupported Cerulean progress operation: "..tostring(kind) end
    return true
  end

  local function verifyOne(session,operation)
    local kind,symbol=operation.op,operation.symbol
    if kind=="set_flag" or kind=="clear_flag" then return Flags.getFlag(session,nil,symbol)==(kind=="set_flag") end
    if kind=="set_var" then return Flags.getVar(session,nil,symbol)==operation.value end
    if kind=="set_trainer_defeated" or kind=="clear_trainer_defeated" then
      return Flags.isTrainerDefeated(session,nil,TRAINERS[symbol])==(kind=="set_trainer_defeated")
    end
    if kind=="ensure_item" then return Bag.has(session.bag,ITEMS[symbol],operation.quantity or 1) end
    if kind=="remove_item" then return not Bag.has(session.bag,ITEMS[symbol],1) end
    return false
  end

  function Pipeline.apply(session,plan)
    if not plan.readyToApply then return nil,plan.blockers end
    for _,operation in ipairs(plan.operations) do
      local ok,err=applyOne(session,operation); if not ok then return nil,err end
    end
    for _,operation in ipairs(plan.operations) do
      if not verifyOne(session,operation) then return nil,"post-write verification failed: "..operation.symbol end
    end
    return {applied=#plan.operations,verified=true,planVersion=plan.planVersion,sliceId=plan.sliceId}
  end

  function Pipeline.run(session,snapshot,sourceVersion,inherited)
    local canonical=Pipeline.resolve(snapshot,sourceVersion)
    local plan=Pipeline.plan(canonical,inherited)
    if not plan.readyToApply then return nil,{canonical=canonical,plan=plan} end
    local write,err=Pipeline.apply(session,plan)
    if not write then return nil,{canonical=canonical,plan=plan,writerError=err} end
    return {canonical=canonical,plan=plan,writer=write}
  end

  return Pipeline
end

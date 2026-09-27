-- Kanto Legacy embedded Stage 1-5 runtime for Route 5 through Vermilion.
-- Reviewed JSON is exported into progress_pipeline_vermilion_data.lua.

local Flags = require("src.core.game3.scripting.flags")
local Bag = require("src.core.game3.bag")

return function(data)
  assert(type(data)=="table" and type(data.evidence)=="table" and type(data.rules)=="table",
    "Vermilion progress data is missing")

  local Pipeline={}
  local SLICE_ID="KANTO_ROUTE5_TO_VERMILION_COMPLETE"
  local SUPPORTED_STARTERS={bulbasaur=true,squirtle=true,charmander=true}
  local TRAINERS={
    TRAINER_BUG_CATCHER_ELIJAH=112,TRAINER_BUG_CATCHER_KEIGO=111,
    TRAINER_CAMPER_JEFF=146,TRAINER_CAMPER_RICKY=145,
    TRAINER_ENGINEER_BAILY=220,TRAINER_ENGINEER_BERNIE=222,TRAINER_ENGINEER_BRAXTON=221,
    TRAINER_FISHERMAN_BARNY=224,TRAINER_FISHERMAN_DALE=223,
    TRAINER_GAMER_DARIAN=261,TRAINER_GAMER_DIRK=260,TRAINER_GAMER_HUGO=258,TRAINER_GAMER_JASPER=259,
    TRAINER_GENTLEMAN_ARTHUR=422,TRAINER_GENTLEMAN_BROOKS=482,TRAINER_GENTLEMAN_LAMAR=483,
    TRAINER_GENTLEMAN_THOMAS=421,TRAINER_GENTLEMAN_TUCKER=423,
    TRAINER_LASS_ANN=126,TRAINER_LASS_DAWN=127,TRAINER_LEADER_LT_SURGE=416,
    TRAINER_PICNICKER_ISABELLE=152,TRAINER_PICNICKER_NANCY=151,
    TRAINER_RIVAL_SS_ANNE_BULBASAUR=427,TRAINER_RIVAL_SS_ANNE_CHARMANDER=428,
    TRAINER_RIVAL_SS_ANNE_SQUIRTLE=426,
    TRAINER_SAILOR_DUNCAN=137,TRAINER_SAILOR_DWAYNE=141,TRAINER_SAILOR_DYLAN=139,
    TRAINER_SAILOR_EDMOND=134,TRAINER_SAILOR_HUEY=138,TRAINER_SAILOR_LEONARD=136,
    TRAINER_SAILOR_PHILLIP=140,TRAINER_SAILOR_TREVOR=135,
    TRAINER_YOUNGSTER_DAVE=100,TRAINER_YOUNGSTER_DILLON=98,TRAINER_YOUNGSTER_EDDIE=97,
    TRAINER_YOUNGSTER_TYLER=96,TRAINER_YOUNGSTER_YASU=99,
  }
  local ITEMS={ITEM_BIKE_VOUCHER=352,ITEM_HM01=339,ITEM_HM05=343,
    ITEM_ITEMFINDER=261,ITEM_OLD_ROD=262,ITEM_TM34=322,ITEM_VS_SEEKER=362}
  local SAFE_AVAILABLE={
    ["VISIT.ROUTE_5"]=true,["VISIT.UNDERGROUND_PATH_NORTH_SOUTH"]=true,
    ["VISIT.ROUTE_6"]=true,["VISIT.SS_ANNE"]=true,["VISIT.ROUTE_11"]=true,
    ["VISIT.DIGLETTS_CAVE"]=true,["VERMILION.FARFETCHD_TRADE"]=true,
    ["ROUTE11.NIDORINO_NIDORINA_TRADE"]=true,
  }

  local function contains(list,wanted)
    for _,value in ipairs(list or {}) do if value==wanted then return true end end
    return false
  end
  local function lookup(snapshot,expression)
    local path,expected=expression:match("^([^=]+)=(.+)$"); path=path or expression
    local node=snapshot
    for part in path:gmatch("[^.]+") do
      if type(node)~="table" or node[part]==nil then return false,nil end
      node=node[part]
    end
    if expected~=nil then return tostring(node):lower()==expected:lower(),node end
    return node and true or false,node
  end
  local function refsFor(rule,version)
    local refs,seen={},{}; local groups=rule.completedAny or {}
    for _,group in ipairs({groups.all or {},groups[version] or {}}) do
      for _,ref in ipairs(group) do if not seen[ref] then seen[ref]=true;refs[#refs+1]=ref end end
    end
    return refs
  end
  local function flag(snapshot,name) return lookup(snapshot,"flags."..name) end
  local function item(snapshot,name)
    return lookup(snapshot,"inventory."..name) or lookup(snapshot,"pcItems."..name)
  end
  local function partyHasMove(snapshot,wanted)
    for _,mon in pairs(snapshot.party or {}) do
      for _,move in pairs(mon.moves or {}) do
        if type(move)=="table" and move.id==wanted then return true end
      end
    end
    return false
  end
  local function ownedCount(snapshot)
    local owned=snapshot.pokedex and snapshot.pokedex.owned
    if type(owned)~="table" then return nil end
    local count=0;for _,on in pairs(owned) do if on==true then count=count+1 end end
    return count
  end
  local SPECIAL={
    ["ROUTE5.DAY_CARE_OCCUPANCY"]=true,["VERMILION.HARBOR_TICKET_ACCESS"]=true,
    ["SS_ANNE.DEPARTURE_ARMED"]=true,["VERMILION_GYM.CUT_TREE_ACCESS"]=true,
    ["VERMILION_GYM.FIRST_SWITCH_FOUND"]=true,["ROUTE11.ITEMFINDER_GIFT"]=true,
    ["VERMILION_ARC.ROUTE9_DEPARTURE_READY"]=true,
  }
  local function record(status,confidence,value,evidence)
    local out={status=status,confidence=confidence or "certain",evidence=evidence or {}}
    if value~=nil then out.value=value end
    return out
  end

  function Pipeline.resolve(snapshot,sourceVersion)
    local version=tostring(sourceVersion or snapshot.version or "unknown"):lower()
    local out={schemaVersion="1.0.0",sliceId=SLICE_ID,
      provenance={sourceGame=version,resolverVersion="lua-1.0.0"},
      events={},conflicts={},normalizations={},summary={}}
    for _,rule in ipairs(data.evidence.eventRules) do
      local id,mode=rule.eventId,rule.mode
      if not SPECIAL[id] then
        local rec=record("unresolved","none")
        if contains(rule.notApplicableVersions,version) then rec=record("not_applicable","certain")
        elseif mode=="unresolved" then rec.note=rule.note
        else
          local refs=refsFor(rule,version)
          for _,ref in ipairs(refs) do if lookup(snapshot,ref) then rec.evidence[#rec.evidence+1]=ref end end
          if #rec.evidence>0 then
            rec.status=("completed");rec.confidence=(mode=="visit" or mode=="derived") and "strong" or "certain"
            if rule.value and not tostring(rule.value):match("^derive:") then rec.value=rule.value end
          else
            local pending=false
            for _,dep in ipairs(rule.pendingAfter or {}) do
              if out.events[dep] and out.events[dep].status=="completed" then pending=true;break end
            end
            local available=false
            for _,dep in ipairs(rule.availableAfter or {}) do
              if out.events[dep] and out.events[dep].status=="completed" then available=true;break end
            end
            if pending then rec=record("reward_pending","strong")
            elseif mode=="target_default" then rec=record("not_applicable","certain")
            elseif available then rec=record("available","strong")
            elseif (mode=="exact" or mode=="visit") and #refs>0 then rec=record("unseen","certain") end
          end
          if rule.note then rec.note=rule.note end
        end
        out.events[id]=rec
      end
    end

    local daycare=snapshot.daycare
    local slots=daycare and daycare.slots
    if daycare==nil then
      -- Gen1Recomp's sparse save serializer omits the entire Day Care record
      -- until the subsystem has state. That is the serialized empty state,
      -- not an unreadable occupied slot.
      out.events["ROUTE5.DAY_CARE_OCCUPANCY"]=record("available","certain","empty",{"closed-world-absence:daycare"})
    elseif type(daycare)=="table" and type(daycare.mon)=="table" and daycare.mon.species~=nil then
      out.events["ROUTE5.DAY_CARE_OCCUPANCY"]=record("completed","certain","occupied",{"daycare.mon"})
    elseif type(slots)=="table" then
      local occupied=next(slots)~=nil
      out.events["ROUTE5.DAY_CARE_OCCUPANCY"]=record(occupied and "completed" or "available","certain",occupied and "occupied" or "empty",{"daycare.slots"})
    else out.events["ROUTE5.DAY_CARE_OCCUPANCY"]=record("unresolved","none","unknown") end

    local departed=flag(snapshot,"EVENT_SS_ANNE_LEFT") and true or false
    local ticket=(flag(snapshot,"EVENT_GOT_SS_TICKET") or item(snapshot,"S_S_TICKET")) and true or false
    out.events["VERMILION.HARBOR_TICKET_ACCESS"]=record(departed and "completed" or (ticket and "completed" or "available"),"strong",departed and "closed_after_departure" or (ticket and "open" or "blocked"))

    local hm=out.events["SS_ANNE.HM01_CUT_REWARD"]
    if departed and hm.status~="completed" then
      out.events["SS_ANNE.HM01_CUT_REWARD"]=record("completed","inferred",nil,{"flags.EVENT_SS_ANNE_LEFT"})
      out.normalizations[#out.normalizations+1]="HM01 advanced from S.S. Anne departure proof"
    end
    hm=out.events["SS_ANNE.HM01_CUT_REWARD"];local hmComplete=hm.status=="completed"
    if hmComplete and out.events["SS_ANNE.CAPTAIN_BACK_RUB"].status~="completed" then
      out.events["SS_ANNE.CAPTAIN_BACK_RUB"]=record("completed","inferred",nil,{"canonical.SS_ANNE.HM01_CUT_REWARD"})
    end
    out.events["SS_ANNE.DEPARTURE_ARMED"]=record(hmComplete and "completed" or "available","strong")
    if hmComplete and not departed then out.events["SS_ANNE.SHIP_DEPARTED"]=record("available","strong") end

    local gymActivity=false
    for _,id in ipairs({"VERMILION_GYM.TRAINER_SHARED_0","VERMILION_GYM.TRAINER_SHARED_1","VERMILION_GYM.TRAINER_SHARED_2","VERMILION_GYM.LT_SURGE_BATTLE"}) do
      gymActivity=gymActivity or out.events[id].status=="completed"
    end
    local cut=partyHasMove(snapshot,"CUT")
    out.events["VERMILION_GYM.CUT_TREE_ACCESS"]=record(
      (gymActivity or (hmComplete and cut)) and "completed" or "available",
      hmComplete and "strong" or "strong",
      (gymActivity or (hmComplete and cut)) and "open" or (hmComplete and "unknown" or "blocked"))

    local first=flag(snapshot,"EVENT_1ST_LOCK_OPENED") and true or false
    local second=flag(snapshot,"EVENT_2ND_LOCK_OPENED") and true or false
    local surge=out.events["VERMILION_GYM.LT_SURGE_BATTLE"].status=="completed"
    if second or surge then out.events["VERMILION_GYM.FIRST_SWITCH_FOUND"]=record("not_applicable","certain")
    elseif first then
      out.events["VERMILION_GYM.FIRST_SWITCH_FOUND"]=record("available","strong")
      out.events["VERMILION_GYM.FIRST_SWITCH_FOUND"].normalization="rollback_to_available"
      out.normalizations[#out.normalizations+1]="Vermilion first switch rolled back for FireRed layout"
    else out.events["VERMILION_GYM.FIRST_SWITCH_FOUND"]=record("available","strong") end

    local count=ownedCount(snapshot)
    local gotFinder=(flag(snapshot,"EVENT_GOT_ITEMFINDER") or item(snapshot,"ITEMFINDER")) and true or false
    if gotFinder then out.events["ROUTE11.ITEMFINDER_GIFT"]=record("completed","certain")
    elseif count==nil then out.events["ROUTE11.ITEMFINDER_GIFT"]=record("unresolved","none")
    elseif count>=30 then out.events["ROUTE11.ITEMFINDER_GIFT"]=record("reward_pending","strong",count)
    else out.events["ROUTE11.ITEMFINDER_GIFT"]=record("available","strong",count) end

    local map=snapshot.player and snapshot.player.map or ""
    local later=(map=="ROUTE_9" or map=="ROUTE_10" or map=="ROCK_TUNNEL_1F" or map=="ROCK_TUNNEL_B1F"
      or (snapshot.visited and snapshot.visited.LAVENDER_TOWN)) and true or false
    out.events["VERMILION_ARC.ROUTE9_DEPARTURE_READY"]=record(
      (later or (hmComplete and cut)) and "completed" or "available","strong",
      (later or (hmComplete and cut)) and "open" or "blocked_without_cut")

    local counts={};for _,rec in pairs(out.events) do counts[rec.status]=(counts[rec.status] or 0)+1 end
    out.summary={eventCount=#data.evidence.eventRules,statusCounts=counts,conflictCount=#out.conflicts,
      normalizationCount=#out.normalizations}
    return out
  end

  local function suffix(id)return id:match("([^.]+)$")end
  local function splitPlain(value,sep)
    local result,start={},1
    while true do local a,b=value:find(sep,start,true);if not a then result[#result+1]=value:sub(start);break end
      result[#result+1]=value:sub(start,a-1);start=b+1 end
    return result
  end
  local function trim(v)return(v:gsub("^%s+",""):gsub("%s+$",""))end
  local function termValue(term,aliases,context)
    term=trim(term)
    if term=="inherited CERULEAN.BICYCLE_ACQUIRED completed" then return context.bicycleAcquired==true end
    if term=="inherited CERULEAN.BICYCLE_ACQUIRED not completed" then return context.bicycleAcquired~=true end
    local name,choices=term:match("^([A-Z0-9_]+) in %[(.+)%]$")
    if name then for value in choices:gmatch("[^,]+") do if aliases[name].status==trim(value) then return true end end;return false end
    name=term:match("^([A-Z0-9_]+) not completed$")
    if name then return aliases[name] and aliases[name].status~="completed" end
    name=term:match("^([A-Z0-9_]+) completed$")
    if name then return aliases[name] and aliases[name].status=="completed" end
    error("unsupported Vermilion reducer predicate: "..term)
  end
  local function conditionValue(expression,aliases,context)
    for _,branch in ipairs(splitPlain(expression," or ")) do
      local yes=true;for _,term in ipairs(splitPlain(branch," and ")) do if not termValue(term,aliases,context) then yes=false;break end end
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
    local context={sourceGame=canonical.provenance.sourceGame,playerStarter=inherited.playerStarter,
      bicycleAcquired=inherited.bicycleAcquired,flashGiftCompleted=inherited.flashGiftCompleted,
      daycarePayloadConverted=inherited.daycarePayloadConverted==true}
    local operations,blockers,audits={},{},{}
    local function add(raw,owner,reason)operations[#operations+1]={op=raw.op,symbol=raw.symbol,value=raw.value,quantity=raw.quantity,owner=owner,reason=reason}end
    local function block(code,message)blockers[#blockers+1]={code=code,message=message}end
    local function audit(code,message)audits[#audits+1]={code=code,message=message}end
    for _,message in ipairs(canonical.conflicts or {})do block("CANONICAL_CONFLICT",message)end
    for _,reducer in ipairs(data.rules.reducers)do
      local aliases={};for _,id in ipairs(reducer.inputs)do aliases[suffix(id)]=events[id]end
      local selected={}
      for _,case in ipairs(reducer.cases)do if conditionValue(case.when,aliases,context)then
        selected[#selected+1]=case.id
        for _,raw in ipairs(case.operations or {})do add(raw,"reducer:"..reducer.id,"case:"..case.id)end
        for _,raw in ipairs((case.valueOperationsByPlayerStarter or {})[context.playerStarter] or {})do add(raw,"reducer:"..reducer.id,"case:"..case.id)end
        local flash=context.flashGiftCompleted and "completed" or "not_completed"
        for _,raw in ipairs((case.conditionalOperationsByInheritedFlash or {})[flash] or {})do add(raw,"reducer:"..reducer.id,"case:"..case.id)end
        if case.audit then audit("REDUCER_AUDIT",case.audit)end
        if case.blocker then block("REDUCER_BLOCKED_CASE",case.blocker)end
      end end
      audit("REDUCER_CASES",reducer.id..": "..(#selected>0 and table.concat(selected,",")or"none"))
    end
    for _,rule in ipairs(data.rules.eventRules)do
      local id,disposition=rule.eventId,rule.disposition;local rec=events[id]
      if disposition=="lossy_no_write" or disposition=="external_subsystem" then audit("NO_DIRECT_WRITE",id.." is owned elsewhere or has no durable target equivalent.")
      elseif disposition~="reducer_input" and disposition~="location_only" then
        local status=rec.status
        if status=="unresolved" and not SAFE_AVAILABLE[id] then block("UNRESOLVED_DIRECT_EVENT",id.." has no safe target write.")
        elseif disposition=="target_default" and status=="completed" then block("TARGET_DEFAULT_COMPLETED",id.." cannot be completed from RBY evidence.")
        else
          if status=="unresolved" and SAFE_AVAILABLE[id] then status="unseen";audit("SAFE_AVAILABLE_DEFAULT",id.." remains replayable.")end
          local selected
          if status=="completed" and rule.completeOperations then selected=rule.completeOperations
          elseif status~="completed" and rule.availableOperations then selected=rule.availableOperations end
          if selected then for _,raw in ipairs(selected)do add(raw,"event:"..id,"canonical status:"..status)end
          elseif rule.target then
            local complete=status=="completed";local op=complete and "set_flag" or "clear_flag"
            if rule.profile=="trainer_base" then op=complete and "set_trainer_defeated" or "clear_trainer_defeated" end
            add({op=op,symbol=rule.target},"event:"..id,"canonical status:"..status)
          end
        end
      end
    end
    local daycare=events["ROUTE5.DAY_CARE_OCCUPANCY"]
    if daycare.value=="occupied" and not context.daycarePayloadConverted then block("DAYCARE_PAYLOAD_REQUIRED","Occupied Day Care Pokemon has not been attached to collection conversion.")
    elseif daycare.value=="occupied" then audit("DAYCARE_PAYLOAD_TRANSFERRED","The single RBY Day Care Pokemon was converted and placed in the FireRed PC.")
    elseif daycare.status=="unresolved" or daycare.value=="unknown" then block("DAYCARE_STATE_UNRESOLVED","Day Care occupancy is unknown.")end
    if events["SS_ANNE.RIVAL_BATTLE"].status=="completed" and not SUPPORTED_STARTERS[context.playerStarter] then block("MISSING_INHERITED_STARTER_BRANCH","S.S. Anne rival needs Slice 1's starter branch.")end
    local hm=events["SS_ANNE.HM01_CUT_REWARD"].status=="completed";local departed=events["SS_ANNE.SHIP_DEPARTED"].status=="completed"
    if departed and not hm then block("SHIP_DEPARTURE_WITHOUT_HM01","S.S. Anne departure requires HM01.")end
    local surge=events["VERMILION_GYM.LT_SURGE_BATTLE"].status=="completed";local badge=events["VERMILION_GYM.THUNDER_BADGE"].status=="completed"
    local tm=events["VERMILION_GYM.TM_REWARD"].status=="completed";local door=events["VERMILION_GYM.DOOR_UNLOCKED"].status=="completed"
    if surge~=badge or(tm and not surge)or(surge and not door)then block("SURGE_PROGRESS_COHERENCE","Surge, Thunder Badge, Gym door, and TM evidence disagree.")end
    local unique,bySymbol={},{ }
    for _,operation in ipairs(operations)do local prior=bySymbol[operation.symbol]
      if not prior then bySymbol[operation.symbol]=operation;unique[#unique+1]=operation
      elseif effect(prior)~=effect(operation)then block("CONTRADICTORY_WRITES","Different desired effects target "..operation.symbol..".")
      else audit("WRITE_DEDUPLICATED","Identical write deduplicated for "..operation.symbol..".")end
    end
    return{planVersion="lua-1.0.0",sliceId=SLICE_ID,readyToApply=#blockers==0,operations=unique,blockers=blockers,audits=audits,
      summary={operationCount=#unique,blockerCount=#blockers,auditCount=#audits}}
  end

  local function applyOne(session,operation)
    local kind,symbol=operation.op,operation.symbol
    if kind=="set_flag" or kind=="clear_flag" then if not Flags.IDS[symbol]then return nil,"unknown FireRed flag symbol: "..symbol end;Flags.setFlag(session,nil,symbol,kind=="set_flag")
    elseif kind=="set_var" then if not Flags.VAR_IDS[symbol]then return nil,"unknown FireRed var symbol: "..symbol end;Flags.setVar(session,nil,symbol,operation.value)
    elseif kind=="set_trainer_defeated" or kind=="clear_trainer_defeated" then local id=TRAINERS[symbol];if not id then return nil,"unknown FireRed trainer symbol: "..symbol end;Flags.setTrainerDefeated(session,nil,id,kind=="set_trainer_defeated")
    elseif kind=="ensure_item" then local id=ITEMS[symbol];if not id then return nil,"unknown FireRed item symbol: "..symbol end;if not Bag.has(session.bag,id,operation.quantity or 1)and not Bag.add(session.bag,id,operation.quantity or 1)then return nil,"no room for required item: "..symbol end
    elseif kind=="remove_item" then local id=ITEMS[symbol];if not id then return nil,"unknown FireRed item symbol: "..symbol end;if Bag.has(session.bag,id,1)then Bag.remove(session.bag,id,operation.quantity or 1)end
    else return nil,"unsupported Vermilion progress operation: "..tostring(kind)end
    return true
  end
  local function verifyOne(session,operation)
    local kind,symbol=operation.op,operation.symbol
    if kind=="set_flag" or kind=="clear_flag" then return Flags.getFlag(session,nil,symbol)==(kind=="set_flag")end
    if kind=="set_var" then return Flags.getVar(session,nil,symbol)==operation.value end
    if kind=="set_trainer_defeated" or kind=="clear_trainer_defeated" then return Flags.isTrainerDefeated(session,nil,TRAINERS[symbol])==(kind=="set_trainer_defeated")end
    if kind=="ensure_item" then return Bag.has(session.bag,ITEMS[symbol],operation.quantity or 1)end
    if kind=="remove_item" then return not Bag.has(session.bag,ITEMS[symbol],1)end
    return false
  end
  function Pipeline.apply(session,plan)
    if not plan.readyToApply then return nil,plan.blockers end
    for _,operation in ipairs(plan.operations)do local ok,err=applyOne(session,operation);if not ok then return nil,err end end
    for _,operation in ipairs(plan.operations)do if not verifyOne(session,operation)then return nil,"post-write verification failed: "..operation.symbol end end
    return{applied=#plan.operations,verified=true,planVersion=plan.planVersion,sliceId=plan.sliceId}
  end
  function Pipeline.run(session,snapshot,sourceVersion,inherited)
    local canonical=Pipeline.resolve(snapshot,sourceVersion);local plan=Pipeline.plan(canonical,inherited)
    if not plan.readyToApply then return nil,{canonical=canonical,plan=plan}end
    local write,err=Pipeline.apply(session,plan);if not write then return nil,{canonical=canonical,plan=plan,writerError=err}end
    return{canonical=canonical,plan=plan,writer=write}
  end
  return Pipeline
end

-- Kanto Legacy embedded Stage 1-5 runtime for the Poke Flute through completed Fuchsia.
-- Reviewed JSON is exported into progress_pipeline_fuchsia_data.lua.

local Flags = require("src.core.game3.scripting.flags")
local Bag = require("src.core.game3.bag")

return function(data)
  assert(type(data)=="table" and type(data.evidence)=="table" and type(data.rules)=="table",
    "Fuchsia progress data is missing")

  local Pipeline={}
  local SLICE_ID="KANTO_POKE_FLUTE_TO_FUCHSIA_COMPLETE"
  local TRAINERS={
    TRAINER_BEAUTY_GRACE=273,TRAINER_BEAUTY_LOLA=268,TRAINER_BEAUTY_OLIVIA=274,TRAINER_BEAUTY_SHEILA=269,
    TRAINER_BIKER_ALEX=198,TRAINER_BIKER_BILLY=203,TRAINER_BIKER_ERNEST=197,TRAINER_BIKER_GERALD=209,
    TRAINER_BIKER_HIDEO=201,TRAINER_BIKER_ISAAC=208,TRAINER_BIKER_JARED=195,TRAINER_BIKER_JAXON=205,
    TRAINER_BIKER_LAO=199,TRAINER_BIKER_LUKAS=207,TRAINER_BIKER_MALIK=196,TRAINER_BIKER_NIKOLAS=204,
    TRAINER_BIKER_RUBEN=202,TRAINER_BIKER_VIRGIL=470,TRAINER_BIKER_WILLIAM=206,
    TRAINER_BIRD_KEEPER_BECK=315,TRAINER_BIRD_KEEPER_BENNY=304,TRAINER_BIRD_KEEPER_CARTER=313,
    TRAINER_BIRD_KEEPER_CHESTER=306,TRAINER_BIRD_KEEPER_DONALD=303,TRAINER_BIRD_KEEPER_EDWIN=305,
    TRAINER_BIRD_KEEPER_JACOB=309,TRAINER_BIRD_KEEPER_MARLON=316,TRAINER_BIRD_KEEPER_MITCH=314,
    TRAINER_BIRD_KEEPER_PERRY=301,TRAINER_BIRD_KEEPER_RAMIRO=308,TRAINER_BIRD_KEEPER_ROBERT=302,
    TRAINER_BIRD_KEEPER_SEBASTIAN=300,TRAINER_BIRD_KEEPER_WILTON=307,TRAINER_CAMPER_JUSTIN=477,
    TRAINER_CRUSH_KIN_RON_MYA=488,TRAINER_CUE_BALL_CAMRON=251,TRAINER_CUE_BALL_COREY=256,
    TRAINER_CUE_BALL_ISAIAH=253,TRAINER_CUE_BALL_JAMAL=255,TRAINER_CUE_BALL_KOJI=249,
    TRAINER_CUE_BALL_LUKE=250,TRAINER_CUE_BALL_RAUL=252,TRAINER_CUE_BALL_ZEEK=254,
    TRAINER_FISHERMAN_ANDREW=233,TRAINER_FISHERMAN_CHIP=226,TRAINER_FISHERMAN_ELLIOT=228,
    TRAINER_FISHERMAN_HANK=227,TRAINER_FISHERMAN_NED=225,TRAINER_JUGGLER_KAYDEN=292,
    TRAINER_JUGGLER_KIRK=288,TRAINER_JUGGLER_NATE=293,TRAINER_JUGGLER_SHAWN=289,
    TRAINER_LEADER_KOGA=418,TRAINER_PICNICKER_ALMA=466,TRAINER_PICNICKER_BECKY=480,
    TRAINER_PICNICKER_CELIA=481,TRAINER_PICNICKER_GWEN=469,TRAINER_PICNICKER_KINDRA=479,
    TRAINER_PICNICKER_SUSIE=467,TRAINER_PICNICKER_VALERIE=468,TRAINER_PICNICKER_YAZMIN=478,
    TRAINER_ROCKER_LUCA=285,TRAINER_TAMER_EDGAR=295,TRAINER_TAMER_PHIL=294,
    TRAINER_TWINS_KIRI_JAN=487,TRAINER_YOUNG_COUPLE_GIA_JES=486,TRAINER_YOUNG_COUPLE_LEA_JED=489,
  }
  local ITEMS={ITEM_EXP_SHARE=182,ITEM_GOLD_TEETH=353,ITEM_GOOD_ROD=263,ITEM_HM03=341,
    ITEM_HM04=342,ITEM_SUPER_ROD=264,ITEM_TM06=294}

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
  local function anyTaken(snapshot,prefix)
    for name,value in pairs(snapshot.itemsTaken or {}) do if value and name:sub(1,#prefix)==prefix then return true end end
    return false
  end
  local function record(status,confidence,value,evidence)
    local out={status=status,confidence=confidence or "certain",evidence=evidence or {}}
    if value~=nil then out.value=value end
    return out
  end
  local function completed(events,id)return events[id] and events[id].status=="completed" end

  local SPECIAL={
    ["FUCHSIA_ARC.POKE_FLUTE_ACCESS"]=true,["ROUTE12.SNORLAX_ENCOUNTER"]=true,
    ["ROUTE16.SNORLAX_ENCOUNTER"]=true,["CYCLING_ROAD.BICYCLE_ACCESS"]=true,
    ["ROUTE18.LICKITUNG_TRADE"]=true,["VISIT.SAFARI_ZONE_CENTER"]=true,
    ["VISIT.SAFARI_ZONE_EAST"]=true,["VISIT.SAFARI_ZONE_NORTH"]=true,["VISIT.SAFARI_ZONE_WEST"]=true,
    ["SAFARI_ZONE.GOLD_TEETH_PICKUP"]=true,["SAFARI_ZONE.HM03_SURF_REWARD"]=true,
    ["FUCHSIA.WARDEN_TEETH_RETURNED"]=true,["FUCHSIA.HM04_STRENGTH_REWARD"]=true,
    ["FUCHSIA_ARC.DEPARTURE_READY"]=true,
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
        elseif mode=="unresolved" then rec=record("unresolved","none")
        else
          local refs=refsFor(rule,version)
          for _,ref in ipairs(refs) do if lookup(snapshot,ref) then rec.evidence[#rec.evidence+1]=ref end end
          if #rec.evidence>0 then rec.status="completed";rec.confidence=(mode=="visit" or mode=="derived") and "strong" or "certain"
          else
            local pending=false
            for _,dep in ipairs(rule.pendingAfter or {}) do if completed(out.events,dep) then pending=true;break end end
            local available=false
            for _,dep in ipairs(rule.availableAfter or {}) do if completed(out.events,dep) then available=true;break end end
            if pending then rec=record("reward_pending","strong")
            elseif mode=="target_default" then rec=record("not_applicable","certain")
            elseif available then rec=record("available","strong")
            elseif #refs>0 then rec=record("unseen",mode=="exact" and "certain" or "strong") end
          end
        end
        out.events[id]=rec
      end
    end

    local flute=(flag(snapshot,"EVENT_GOT_POKE_FLUTE") or item(snapshot,"POKE_FLUTE")) and true or false
    out.events["FUCHSIA_ARC.POKE_FLUTE_ACCESS"]=record(flute and "completed" or "available","certain",flute and "open" or "blocked_without_flute")

    for _,route in ipairs({12,16}) do
      local id="ROUTE"..route..".SNORLAX_ENCOUNTER"
      local beat=flag(snapshot,"EVENT_BEAT_ROUTE"..route.."_SNORLAX") and true or false
      local hidden=lookup(snapshot,"objectToggles.ROUTE_"..route..".ROUTE"..route.."_SNORLAX=false") and true or false
      local present=lookup(snapshot,"objectToggles.ROUTE_"..route..".ROUTE"..route.."_SNORLAX=true") and true or false
      if beat or hidden then
        out.events[id]=record("completed","certain","resolved_outcome_unknown")
        if beat and present then out.conflicts[#out.conflicts+1]={eventId=id,note="Snorlax defeat bit contradicts a visible overworld object."} end
      else
        local visited=completed(out.events,"VISIT.ROUTE_"..route)
        out.events[id]=record((flute or visited) and "available" or "unseen","strong","sleeping")
      end
    end

    local cycling=completed(out.events,"VISIT.ROUTE_17") or completed(out.events,"VISIT.ROUTE_18")
    local bicycle=(item(snapshot,"BICYCLE") or flag(snapshot,"EVENT_GOT_BICYCLE")) and true or false
    if cycling and not bicycle then bicycle=true;out.normalizations[#out.normalizations+1]="Cycling Road activity proves Bicycle access" end
    out.events["CYCLING_ROAD.BICYCLE_ACCESS"]=record(bicycle and "completed" or "available",cycling and "inferred" or "certain",bicycle and "open" or "blocked_without_bicycle")

    local current=tostring((snapshot.player or {}).map or "")
    local downstream=(flag(snapshot,"EVENT_GAVE_GOLD_TEETH") or flag(snapshot,"EVENT_GOT_HM04")) and true or false
    local gold=(lookup(snapshot,"itemsTaken.SAFARI_ZONE_WEST_obj_4") or item(snapshot,"GOLD_TEETH") or downstream) and true or false
    local hm03=(flag(snapshot,"EVENT_GOT_HM03") or item(snapshot,"HM_SURF")) and true or false
    local fullRoute=gold or hm03
    local safari={
      CENTER=current:match("^SAFARI_ZONE_")~=nil or anyTaken(snapshot,"SAFARI_ZONE_") or fullRoute,
      EAST=contains({"SAFARI_ZONE_EAST","SAFARI_ZONE_EAST_REST_HOUSE"},current) or anyTaken(snapshot,"SAFARI_ZONE_EAST_") or fullRoute,
      NORTH=contains({"SAFARI_ZONE_NORTH","SAFARI_ZONE_NORTH_REST_HOUSE"},current) or anyTaken(snapshot,"SAFARI_ZONE_NORTH_") or fullRoute,
      WEST=contains({"SAFARI_ZONE_WEST","SAFARI_ZONE_WEST_REST_HOUSE","SAFARI_ZONE_SECRET_HOUSE"},current) or anyTaken(snapshot,"SAFARI_ZONE_WEST_") or fullRoute,
    }
    for area,hit in pairs(safari) do out.events["VISIT.SAFARI_ZONE_"..area]=record(hit and "completed" or "unseen",fullRoute and "inferred" or "strong") end
    out.events["SAFARI_ZONE.GOLD_TEETH_PICKUP"]=record(gold and "completed" or (safari.WEST and "available" or "unseen"),downstream and "inferred" or "certain")
    out.events["SAFARI_ZONE.HM03_SURF_REWARD"]=record(hm03 and "completed" or (safari.WEST and "available" or "unseen"),hm03 and "certain" or "strong")

    local returned=(flag(snapshot,"EVENT_GAVE_GOLD_TEETH") or flag(snapshot,"EVENT_GOT_HM04") or item(snapshot,"HM_STRENGTH")) and true or false
    local hm04=(flag(snapshot,"EVENT_GOT_HM04") or item(snapshot,"HM_STRENGTH")) and true or false
    out.events["FUCHSIA.WARDEN_TEETH_RETURNED"]=record(returned and "completed" or (gold and "available" or "unseen"),hm04 and "inferred" or "certain")
    out.events["FUCHSIA.HM04_STRENGTH_REWARD"]=record(hm04 and "completed" or (returned and "reward_pending" or (gold and "available" or "unseen")),(hm04 or returned) and "certain" or "strong")

    local koga=completed(out.events,"FUCHSIA_GYM.KOGA_BATTLE")
    local soul=completed(out.events,"FUCHSIA_GYM.SOUL_BADGE")
    local tm06=completed(out.events,"FUCHSIA_GYM.TM_REWARD")
    if (soul or tm06) and not koga then out.events["FUCHSIA_GYM.KOGA_BATTLE"]=record("completed","inferred");koga=true end
    if koga and not soul then out.events["FUCHSIA_GYM.SOUL_BADGE"]=record("completed","inferred");soul=true end
    if koga and not tm06 then out.events["FUCHSIA_GYM.TM_REWARD"]=record("reward_pending","strong") end

    out.events["ROUTE18.LICKITUNG_TRADE"]=record("unresolved","none")
    local ready=soul and hm03 and hm04
    out.events["FUCHSIA_ARC.DEPARTURE_READY"]=record(ready and "completed" or "available","certain",ready and "ready" or "incomplete")
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
  local function termValue(term,aliases)
    term=trim(term)
    local name,value=term:match("^([A-Z0-9_]+)%.value == ([a-z_]+)$")
    if name then return aliases[name] and aliases[name].value==value end
    name=term:match("^([A-Z0-9_]+) not completed$")
    if name then return aliases[name] and aliases[name].status~="completed" end
    name=term:match("^([A-Z0-9_]+) completed$")
    if name then return aliases[name] and aliases[name].status=="completed" end
    error("unsupported Fuchsia reducer predicate: "..term)
  end
  local function conditionValue(expression,aliases)
    for _,branch in ipairs(splitPlain(expression," or ")) do local yes=true
      for _,term in ipairs(splitPlain(branch," and ")) do if not termValue(term,aliases) then yes=false;break end end
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
    local operations,blockers,audits={},{},{}
    local function add(raw,owner,reason)operations[#operations+1]={op=raw.op,symbol=raw.symbol,value=raw.value,quantity=raw.quantity,owner=owner,reason=reason}end
    local function block(code,message)blockers[#blockers+1]={code=code,message=message}end
    local function audit(code,message)audits[#audits+1]={code=code,message=message}end
    for _,message in ipairs(canonical.conflicts or {}) do block("CANONICAL_CONFLICT",type(message)=="table" and (message.note or message.eventId) or message) end
    for _,reducer in ipairs(data.rules.reducers) do
      local aliases={};for _,id in ipairs(reducer.inputs) do aliases[suffix(id)]=events[id] end
      local selected={}
      for _,case in ipairs(reducer.cases) do if conditionValue(case.when,aliases) then
        selected[#selected+1]=case.id
        for _,raw in ipairs(case.operations or {}) do add(raw,"reducer:"..reducer.id,"case:"..case.id) end
        if case.audit then audit("REDUCER_AUDIT",case.audit) end
        if case.blocker then block("REDUCER_BLOCKED_CASE",case.blocker) end
      end end
      audit("REDUCER_CASES",reducer.id..": "..(#selected>0 and table.concat(selected,",") or "none"))
      for _,id in ipairs(reducer.inputs) do if events[id].status=="unresolved" then block("UNRESOLVED_REDUCER_INPUT",id.." has no coherent reducer case.") end end
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
            local done=status=="completed";local op=done and "set_flag" or "clear_flag"
            if rule.profile=="trainer_base" or rule.target:match("^TRAINER_") then
              op=done and "set_trainer_defeated" or "clear_trainer_defeated"
            end
            add({op=op,symbol=rule.target},"event:"..id,"canonical status:"..status)
          end
        end
      end
    end

    local flute=events["FUCHSIA_ARC.POKE_FLUTE_ACCESS"]
    local forwardFuchsia=false
    for _,id in ipairs({"ROUTE12.SNORLAX_ENCOUNTER","ROUTE16.SNORLAX_ENCOUNTER","VISIT.ROUTE_13",
        "VISIT.ROUTE_14","VISIT.ROUTE_15","VISIT.ROUTE_17","VISIT.ROUTE_18","VISIT.FUCHSIA_CITY",
        "VISIT.SAFARI_ZONE_CENTER","FUCHSIA_GYM.KOGA_BATTLE"}) do
      forwardFuchsia=forwardFuchsia or completed(events,id)
    end
    if forwardFuchsia and (flute.status~="completed" or flute.value~="open") then
      block("POKE_FLUTE_ACCESS_REQUIRED","Forward Fuchsia progress requires the Poke Flute.")
    end
    for _,id in ipairs({"ROUTE12.SNORLAX_ENCOUNTER","ROUTE16.SNORLAX_ENCOUNTER"}) do local rec=events[id]
      local valid=((rec.status=="unseen" or rec.status=="available") and rec.value=="sleeping") or (rec.status=="completed" and rec.value=="resolved_outcome_unknown")
      if not valid then block("SNORLAX_STATE_UNRESOLVED",id.." is neither sleeping nor safely resolved.") end
    end
    local cycling=events["CYCLING_ROAD.BICYCLE_ACCESS"]
    if cycling.status=="completed" and cycling.value=="open" and inherited.bicycleAcquired~=true then block("CYCLING_ROAD_WITHOUT_INHERITED_BICYCLE","Cycling Road progress requires the inherited Bicycle.") end
    local teeth=completed(events,"SAFARI_ZONE.GOLD_TEETH_PICKUP")
    local returned=completed(events,"FUCHSIA.WARDEN_TEETH_RETURNED")
    local hm04=completed(events,"FUCHSIA.HM04_STRENGTH_REWARD")
    if returned and not teeth then block("WARDEN_RETURN_WITHOUT_TEETH","Returned teeth require the Safari pickup.") end
    if hm04 and not returned then block("HM04_WITHOUT_TEETH_RETURN","HM04 requires the teeth return.") end
    local koga=completed(events,"FUCHSIA_GYM.KOGA_BATTLE")
    local badge=completed(events,"FUCHSIA_GYM.SOUL_BADGE")
    local tm06=completed(events,"FUCHSIA_GYM.TM_REWARD")
    if koga~=badge or (tm06 and not koga) then block("KOGA_PROGRESS_COHERENCE","Koga, Soul Badge, and TM06 evidence disagree.") end
    local hm03=completed(events,"SAFARI_ZONE.HM03_SURF_REWARD")
    local boundary=events["FUCHSIA_ARC.DEPARTURE_READY"]
    local shouldBeReady=badge and hm03 and hm04
    local isReady=boundary.status=="completed" and boundary.value=="ready"
    if shouldBeReady~=isReady then block("FUCHSIA_BOUNDARY_COHERENCE","Fuchsia boundary must equal Soul Badge plus HM03 plus HM04.") end

    local unique,bySymbol={},{ }
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
    else return nil,"unsupported Fuchsia progress operation: "..tostring(kind) end
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

-- Kanto Legacy embedded Stage 6 runtime for Saffron, Silph Co., and Sabrina.
-- Reviewed JSON is exported into progress_pipeline_saffron_data.lua.

local Flags = require("src.core.game3.scripting.flags")
local Bag = require("src.core.game3.bag")

return function(data)
  assert(type(data)=="table" and type(data.evidence)=="table" and type(data.rules)=="table",
    "Saffron progress data is missing")

  local Pipeline={}
  local SLICE_ID="KANTO_SAFFRON_ARC_COMPLETE"
  local TRAINERS={
    TRAINER_BLACK_BELT_AARON=320,TRAINER_BLACK_BELT_HIDEKI=319,TRAINER_BLACK_BELT_HITOSHI=321,
    TRAINER_BLACK_BELT_KOICHI=317,TRAINER_BLACK_BELT_MIKE=318,TRAINER_BOSS_GIOVANNI_2=349,
    TRAINER_CHANNELER_AMANDA=462,TRAINER_CHANNELER_STACY=463,TRAINER_CHANNELER_TASHA=464,
    TRAINER_JUGGLER_DALTON=286,TRAINER_LEADER_SABRINA=420,TRAINER_PSYCHIC_CAMERON=282,
    TRAINER_PSYCHIC_JOHAN=280,TRAINER_PSYCHIC_PRESTON=283,TRAINER_PSYCHIC_TYRON=281,
    TRAINER_RIVAL_SILPH_BULBASAUR=433,TRAINER_RIVAL_SILPH_CHARMANDER=434,TRAINER_RIVAL_SILPH_SQUIRTLE=432,
    TRAINER_SCIENTIST_BEAU=340,TRAINER_SCIENTIST_CONNOR=336,TRAINER_SCIENTIST_ED=344,
    TRAINER_SCIENTIST_JERRY=337,TRAINER_SCIENTIST_JOSE=338,TRAINER_SCIENTIST_JOSHUA=342,
    TRAINER_SCIENTIST_PARKER=343,TRAINER_SCIENTIST_RODNEY=339,TRAINER_SCIENTIST_TAYLOR=341,
    TRAINER_SCIENTIST_TRAVIS=345,
    TRAINER_TEAM_ROCKET_GRUNT_23=373,TRAINER_TEAM_ROCKET_GRUNT_24=374,
    TRAINER_TEAM_ROCKET_GRUNT_25=375,TRAINER_TEAM_ROCKET_GRUNT_26=376,
    TRAINER_TEAM_ROCKET_GRUNT_27=377,TRAINER_TEAM_ROCKET_GRUNT_28=378,
    TRAINER_TEAM_ROCKET_GRUNT_29=379,TRAINER_TEAM_ROCKET_GRUNT_30=380,
    TRAINER_TEAM_ROCKET_GRUNT_31=381,TRAINER_TEAM_ROCKET_GRUNT_32=382,
    TRAINER_TEAM_ROCKET_GRUNT_33=383,TRAINER_TEAM_ROCKET_GRUNT_34=384,
    TRAINER_TEAM_ROCKET_GRUNT_35=385,TRAINER_TEAM_ROCKET_GRUNT_36=386,
    TRAINER_TEAM_ROCKET_GRUNT_37=387,TRAINER_TEAM_ROCKET_GRUNT_38=388,
    TRAINER_TEAM_ROCKET_GRUNT_39=389,TRAINER_TEAM_ROCKET_GRUNT_40=390,
    TRAINER_TEAM_ROCKET_GRUNT_41=391,
  }
  local ITEMS={ITEM_CARD_KEY=355,ITEM_MASTER_BALL=1,ITEM_TM04=292,ITEM_TM29=317}
  local SAFFRON_MAPS={SAFFRON_CITY=true,SAFFRON_POKECENTER=true,SAFFRON_MART=true,FIGHTING_DOJO=true,
    SAFFRON_GYM=true,MR_PSYCHICS_HOUSE=true,COPYCATS_HOUSE_1F=true,COPYCATS_HOUSE_2F=true,
    SAFFRON_PIDGEY_HOUSE=true,SAFFRON_POKEMON_TRAINER_FAN_CLUB=true,SILPH_CO_ELEVATOR=true}
  for floor=1,11 do SAFFRON_MAPS["SILPH_CO_"..floor.."F"]=true end

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
  local function anyPrefix(tableValue,prefix)
    for name,value in pairs(tableValue or {}) do if value and name:sub(1,#prefix)==prefix then return true end end
    return false
  end
  local function record(status,confidence,value,evidence)
    local out={status=status,confidence=confidence or "certain",evidence=evidence or {}}
    if value~=nil then out.value=value end
    return out
  end
  local function completed(events,id)return events[id] and events[id].status=="completed" end
  local SPECIAL={
    ["SAFFRON_ARC.CITY_ACCESS"]=true,["VISIT.SAFFRON_CITY"]=true,
    ["FIGHTING_DOJO.HITMON_GIFT"]=true,["SILPH_CO.CARD_KEY_PICKUP"]=true,
    ["SILPH_CO.CLEARED"]=true,["SAFFRON_ARC.DEPARTURE_READY"]=true,
  }

  function Pipeline.resolve(snapshot,sourceVersion)
    local version=tostring(sourceVersion or snapshot.version or "unknown"):lower()
    local out={schemaVersion="1.0.0",sliceId=SLICE_ID,
      provenance={sourceGame=version,resolverVersion="lua-1.0.0"},events={},conflicts={},normalizations={}}
    local current=tostring((snapshot.player or {}).map or "")
    local activity=SAFFRON_MAPS[current] or (snapshot.visited or {}).SAFFRON_CITY
      or anyPrefix(snapshot.flags,"EVENT_BEAT_SILPH_CO_") or anyPrefix(snapshot.flags,"EVENT_SILPH_CO_")
      or anyPrefix(snapshot.itemsTaken,"SILPH_CO_") or anyPrefix(snapshot.flags,"EVENT_BEAT_FIGHTING_DOJO")
      or anyPrefix(snapshot.flags,"EVENT_GOT_HITMON") or flag(snapshot,"EVENT_BEAT_KARATE_MASTER")
      or flag(snapshot,"EVENT_BEAT_SABRINA") or flag(snapshot,"EVENT_GOT_TM29")
      or flag(snapshot,"EVENT_GOT_TM31") or flag(snapshot,"EVENT_GOT_TM36") or flag(snapshot,"EVENT_GOT_TM46")
    activity=activity and true or false
    out.events["SAFFRON_ARC.CITY_ACCESS"]=record(activity and "completed" or "available","strong",activity and "open" or "closed")
    out.events["VISIT.SAFFRON_CITY"]=record(activity and "completed" or "unseen","strong")

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
            local pending=false;for _,dep in ipairs(rule.pendingAfter or {}) do if completed(out.events,dep) then pending=true;break end end
            local available=false;for _,dep in ipairs(rule.availableAfter or {}) do if completed(out.events,dep) then available=true;break end end
            if pending then rec=record("reward_pending","strong")
            elseif mode=="target_default" then rec=record("not_applicable","certain")
            elseif available then rec=record("available","strong")
            elseif #refs>0 then rec=record("unseen",mode=="exact" and "certain" or "strong") end
          end
        end
        out.events[id]=rec
      end
    end

    local lee=flag(snapshot,"EVENT_GOT_HITMONLEE") and true or false
    local chan=flag(snapshot,"EVENT_GOT_HITMONCHAN") and true or false
    local master=completed(out.events,"FIGHTING_DOJO.KARATE_MASTER_BATTLE") or lee or chan
    if master then
      for i=0,3 do out.events["FIGHTING_DOJO.TRAINER_SHARED_"..i]=record("completed","inferred") end
      out.events["FIGHTING_DOJO.KARATE_MASTER_BATTLE"]=record("completed",completed(out.events,"FIGHTING_DOJO.KARATE_MASTER_BATTLE") and "certain" or "inferred")
    end
    if lee and chan then
      out.events["FIGHTING_DOJO.HITMON_GIFT"]=record("unresolved","none","unknown")
      out.conflicts[#out.conflicts+1]={eventId="FIGHTING_DOJO.HITMON_GIFT",note="Both mutually exclusive Hitmon claim flags are set."}
    elseif lee or chan then
      out.events["FIGHTING_DOJO.HITMON_GIFT"]=record("completed","certain",lee and "hitmonlee" or "hitmonchan")
    else out.events["FIGHTING_DOJO.HITMON_GIFT"]=record(master and "reward_pending" or "unseen","strong","unclaimed") end

    local openDoors={}
    for id,rec in pairs(out.events) do if id:find(".CARD_KEY_DOOR_",1,true) and rec.status=="completed" then openDoors[#openDoors+1]=id end end
    local cardObject=lookup(snapshot,"itemsTaken.SILPH_CO_5F_obj_8") and true or false
    local cardItem=item(snapshot,"CARD_KEY") and true or false
    local card=cardObject or cardItem or #openDoors>0
    out.events["SILPH_CO.CARD_KEY_PICKUP"]=record(card and "completed" or (completed(out.events,"VISIT.SILPH_CO_5F") and "available" or "unseen"),
      (#openDoors>0 and not cardObject and not cardItem) and "inferred" or "certain")
    if card then for id,rec in pairs(out.events) do if id:find(".CARD_KEY_DOOR_",1,true) and rec.status=="unseen" then rec.status="available";rec.confidence="strong" end end end

    local giovanni=completed(out.events,"SILPH_CO.GIOVANNI_BATTLE")
    local rival=completed(out.events,"SILPH_CO.RIVAL_BATTLE")
    if giovanni and not rival then out.events["SILPH_CO.RIVAL_BATTLE"]=record("completed","inferred");rival=true end
    if rival and out.events["SILPH_CO.LAPRAS_GIFT"].status=="unseen" then out.events["SILPH_CO.LAPRAS_GIFT"]=record("reward_pending","strong") end
    out.events["SILPH_CO.CLEARED"]=record(giovanni and "completed" or (rival and "available" or "unseen"),"certain")
    if giovanni and not completed(out.events,"SILPH_CO.MASTER_BALL_REWARD") then out.events["SILPH_CO.MASTER_BALL_REWARD"]=record("reward_pending","strong") end
    if rival then out.events["VISIT.SILPH_CO_7F"]=record("completed","inferred") end
    if giovanni then out.events["VISIT.SILPH_CO_11F"]=record("completed","inferred") end
    local anySilph=false;for floor=2,11 do anySilph=anySilph or completed(out.events,"VISIT.SILPH_CO_"..floor.."F") end
    if anySilph then out.events["VISIT.SILPH_CO_1F"]=record("completed","inferred") end

    local sabrina=completed(out.events,"SAFFRON_GYM.SABRINA_BATTLE")
    local marsh=completed(out.events,"SAFFRON_GYM.MARSH_BADGE")
    local tm04=completed(out.events,"SAFFRON_GYM.TM_REWARD")
    if (marsh or tm04) and not sabrina then out.events["SAFFRON_GYM.SABRINA_BATTLE"]=record("completed","inferred");sabrina=true end
    if sabrina and not marsh then out.events["SAFFRON_GYM.MARSH_BADGE"]=record("completed","inferred");marsh=true end
    if sabrina and not tm04 then out.events["SAFFRON_GYM.TM_REWARD"]=record("reward_pending","strong") end
    local ready=giovanni and marsh
    out.events["SAFFRON_ARC.DEPARTURE_READY"]=record(ready and "completed" or "available","certain",ready and "ready" or "incomplete")
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
    local name=term:match("^([A-Z0-9_]+) not completed$")
    if name then return aliases[name] and aliases[name].status~="completed" end
    name=term:match("^([A-Z0-9_]+) completed$")
    if name then return aliases[name] and aliases[name].status=="completed" end
    error("unsupported Saffron reducer predicate: "..term)
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
        local starter=inherited.playerStarter
        for _,raw in ipairs((case.valueOperationsByPlayerStarter or {})[starter] or {}) do add(raw,"reducer:"..reducer.id,"case:"..case.id) end
        if case.audit then audit("REDUCER_AUDIT",case.audit) end
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
            if rule.profile=="trainer_base" or rule.target:match("^TRAINER_") then op=done and "set_trainer_defeated" or "clear_trainer_defeated" end
            add({op=op,symbol=rule.target},"event:"..id,"canonical status:"..status)
          end
        end
      end
    end

    local access=events["SAFFRON_ARC.CITY_ACCESS"]
    local forward=false;for id,rec in pairs(events) do if id~="SAFFRON_ARC.CITY_ACCESS" and id~="SAFFRON_ARC.DEPARTURE_READY" and rec.status=="completed" then forward=true end end
    if forward and (access.status~="completed" or access.value~="open") then block("SAFFRON_ACCESS_REQUIRED","Durable Saffron progress requires open city access.") end
    local dojoMaster=completed(events,"FIGHTING_DOJO.KARATE_MASTER_BATTLE")
    if dojoMaster then for i=0,3 do if not completed(events,"FIGHTING_DOJO.TRAINER_SHARED_"..i) then block("DOJO_MASTER_WITHOUT_TRAINERS","Karate Master requires all four Dojo trainers.") end end end
    local hitmon=events["FIGHTING_DOJO.HITMON_GIFT"]
    if hitmon.status=="completed" then
      if not dojoMaster or (hitmon.value~="hitmonlee" and hitmon.value~="hitmonchan") then block("HITMON_CHOICE_COHERENCE","Claimed Dojo gift has no coherent choice.") end
      if inherited.hitmonGiftReconciled~=true then block("HITMON_GIFT_RECONCILIATION_REQUIRED","Claimed Hitmon gift requires collection reconciliation.") end
    end
    local card=completed(events,"SILPH_CO.CARD_KEY_PICKUP")
    for id,rec in pairs(events) do if id:find(".CARD_KEY_DOOR_",1,true) and rec.status=="completed" and not card then block("SILPH_DOOR_WITHOUT_CARD_KEY","Opened Silph door requires the Card Key.") end end
    local rival=completed(events,"SILPH_CO.RIVAL_BATTLE")
    if rival and not contains({"bulbasaur","squirtle","charmander"},inherited.playerStarter) then block("MISSING_INHERITED_STARTER_BRANCH","Silph rival requires the inherited starter branch.") end
    local giovanni=completed(events,"SILPH_CO.GIOVANNI_BATTLE")
    local cleared=completed(events,"SILPH_CO.CLEARED")
    local masterBall=completed(events,"SILPH_CO.MASTER_BALL_REWARD")
    if giovanni~=cleared or (giovanni and not rival) or (masterBall and not cleared) then block("SILPH_CLEAR_COHERENCE","Rival, Giovanni, Silph clear, and Master Ball evidence disagree.") end
    local lapras=events["SILPH_CO.LAPRAS_GIFT"]
    if lapras.status=="completed" then
      if not rival then block("LAPRAS_WITHOUT_RIVAL","Lapras cannot be claimed before the rival battle.") end
      if inherited.laprasGiftReconciled~=true then block("LAPRAS_GIFT_RECONCILIATION_REQUIRED","Claimed Lapras gift requires collection reconciliation.")
      else add({op="set_flag",symbol="FLAG_GOT_LAPRAS_FROM_SILPH"},"assertion:POKEMON_PAYLOADS_EXTERNAL","claimed gift reconciled") end
    elseif lapras.status=="unresolved" then block("LAPRAS_GIFT_UNRESOLVED","Lapras claim evidence is unresolved.")
    else add({op="clear_flag",symbol="FLAG_GOT_LAPRAS_FROM_SILPH"},"assertion:POKEMON_PAYLOADS_EXTERNAL","canonical status:"..lapras.status) end
    local sabrina=completed(events,"SAFFRON_GYM.SABRINA_BATTLE")
    local marsh=completed(events,"SAFFRON_GYM.MARSH_BADGE")
    local tm04=completed(events,"SAFFRON_GYM.TM_REWARD")
    if sabrina~=marsh or (tm04 and not sabrina) then block("SABRINA_PROGRESS_COHERENCE","Sabrina, Marsh Badge, and TM04 evidence disagree.") end
    local boundary=events["SAFFRON_ARC.DEPARTURE_READY"]
    local shouldBeReady=cleared and marsh;local isReady=boundary.status=="completed" and boundary.value=="ready"
    if shouldBeReady~=isReady then block("SAFFRON_BOUNDARY_COHERENCE","Saffron boundary must equal Silph clear plus Marsh Badge.") end

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
    else return nil,"unsupported Saffron progress operation: "..tostring(kind) end
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
    return {applied=#plan.operations,verified=true}
  end
  function Pipeline.run(session,snapshot,sourceVersion,inherited)
    local canonical=Pipeline.resolve(snapshot,sourceVersion);local plan=Pipeline.plan(canonical,inherited)
    if not plan.readyToApply then return nil,{canonical=canonical,plan=plan} end
    local write,err=Pipeline.apply(session,plan);if not write then return nil,{canonical=canonical,plan=plan,writerError=err} end
    return {canonical=canonical,plan=plan,writer=write}
  end
  return Pipeline
end

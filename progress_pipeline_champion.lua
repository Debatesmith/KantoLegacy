-- Kanto Legacy embedded final-slice runtime: Viridian Gym through first Hall of Fame.
local Flags=require("src.core.game3.scripting.flags")
local Bag=require("src.core.game3.bag")

return function(data)
  assert(type(data)=="table" and data.evidence and data.rules and data.runtimeIds,"Champion progress data is missing")
  local P={};local SLICE="KANTO_VIRIDIAN_TO_CHAMPION_COMPLETE"
  local MAPS={VIRIDIAN_GYM="VIRIDIAN_GYM",ROUTE_22="ROUTE_22",ROUTE_23="ROUTE_23",VICTORY_ROAD_1F="VICTORY_ROAD_1F",VICTORY_ROAD_2F="VICTORY_ROAD_2F",VICTORY_ROAD_3F="VICTORY_ROAD_3F",INDIGO_PLATEAU="INDIGO_PLATEAU_EXTERIOR",INDIGO_PLATEAU_LOBBY="INDIGO_PLATEAU_CENTER",LORELEIS_ROOM="POKEMON_LEAGUE_LORELEI",BRUNOS_ROOM="POKEMON_LEAGUE_BRUNO",AGATHAS_ROOM="POKEMON_LEAGUE_AGATHA",LANCES_ROOM="POKEMON_LEAGUE_LANCE",CHAMPIONS_ROOM="POKEMON_LEAGUE_CHAMPION",HALL_OF_FAME="POKEMON_LEAGUE_HALL_OF_FAME"}
  local function scalar(v)if v==true then return"true"elseif v==false then return"false"elseif v==nil then return"null"end return tostring(v)end
  local function lookup(s,expr)local path,want=expr:match("^([^=]+)=(.+)$");path=path or expr;local n=s
    for part in path:gmatch("[^.]+")do if type(n)~="table"or n[part]==nil then return false,nil end;n=n[part]end
    if want then return scalar(n):lower()==want:lower(),n end;return n and true or false,n end
  local function flag(s,n)return lookup(s,"flags."..n)end
  local function item(s,n)return lookup(s,"inventory."..n)or lookup(s,"pcItems."..n)end
  local function prefix(t,p)for k,v in pairs(t or{})do if v and k:sub(1,#p)==p then return true end end return false end
  local function contains(t,x)for _,v in ipairs(t or{})do if v==x then return true end end return false end
  local function rec(status,confidence,value)local r={status=status,confidence=confidence or"certain",evidence={}};if value~=nil then r.value=value end;return r end
  local function done(events,id)return events[id]and events[id].status=="completed"end
  local function refs(rule,version)local out,seen={},{};local c=rule.completedAny or{}
    for _,g in ipairs({c.all or{},c[version]or{}})do for _,x in ipairs(g)do if not seen[x]then seen[x]=true;out[#out+1]=x end end end;return out end
  local SPECIAL={}
  for _,id in ipairs({"VIRIDIAN_GYM.GIOVANNI_BATTLE","VIRIDIAN_GYM.EARTH_BADGE","POKEMON_LEAGUE.LORELEI_BATTLE","POKEMON_LEAGUE.BRUNO_BATTLE","POKEMON_LEAGUE.AGATHA_BATTLE","POKEMON_LEAGUE.LANCE_BATTLE","POKEMON_LEAGUE.CHAMPION_BATTLE","POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE","KANTO_STORY.COMPLETE"})do SPECIAL[id]=true end

  function P.resolve(snapshot,sourceVersion)
    local version=tostring(sourceVersion or snapshot.version or"unknown"):lower();local events,conflicts,normalizations={},{},{}
    local current=tostring((snapshot.player or{}).map or"");local activity={};local function mark(x)activity[x]=true end
    if MAPS[current]then mark(MAPS[current])end
    if prefix(snapshot.flags,"EVENT_BEAT_VIRIDIAN_GYM")then mark("VIRIDIAN_GYM")end
    if flag(snapshot,"EVENT_BEAT_ROUTE22_RIVAL_2ND_BATTLE")then mark("ROUTE_22")end
    for k,v in pairs(snapshot.flags or{})do if v and k:match("^EVENT_PASSED_.+BADGE_CHECK$")then mark("ROUTE_23")end end
    for floor=1,3 do if prefix(snapshot.flags,"EVENT_BEAT_VICTORY_ROAD_"..floor)or prefix(snapshot.flags,"EVENT_VICTORY_ROAD_"..floor)or prefix(snapshot.itemsTaken,"VICTORY_ROAD_"..floor.."F_")then mark("VICTORY_ROAD_"..floor.."F")end end
    local champion=flag(snapshot,"EVENT_BEAT_CHAMPION_RIVAL")and true or false
    local recordedHof=type(snapshot.hallOfFame)=="table"and next(snapshot.hallOfFame)~=nil or snapshot.postGameHomeOk==true
    -- Older Gen1Recomp saves did not always serialize Hall of Fame history.
    -- A defeated Champion followed by a save back in Pallet is nevertheless
    -- conclusive: the mandatory Oak/induction/restart sequence has completed.
    local returnedHomeAfterChampion=champion and current=="PALLET_TOWN"
    local hof=recordedHof or returnedHomeAfterChampion
    if returnedHomeAfterChampion and not recordedHof then normalizations[#normalizations+1]={eventId="POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE",to="completed",reason="Champion defeated and player returned to Pallet Town; legacy save omitted Hall of Fame history."}end
    if champion or hof then mark("INDIGO_PLATEAU_CENTER")end
    for _,rule in ipairs(data.evidence.eventRules)do local id=rule.eventId
      if id:sub(1,6)=="VISIT."then local area=id:sub(7);local hit=activity[area]or(snapshot.visited or{})[area]or(area:match("^INDIGO_PLATEAU")and(snapshot.visited or{}).INDIGO_PLATEAU);events[id]=rec(hit and"completed"or"unseen","strong")end end
    for _,rule in ipairs(data.evidence.eventRules)do local id=rule.eventId
      if id:sub(1,6)~="VISIT."and not SPECIAL[id]then
        if contains(rule.notApplicableVersions,version)then events[id]=rec("not_applicable")
        else local hits={};for _,x in ipairs(refs(rule,version))do if lookup(snapshot,x)then hits[#hits+1]=x end end
          if #hits>0 then events[id]=rec("completed",rule.mode=="derived"and"strong"or"certain",id=="VICTORY_ROAD.MOLTRES_RESOLVED"and"removed_outcome_unknown"or nil)
          else local pending=false;for _,x in ipairs(rule.pendingAfter or{})do pending=pending or done(events,x)end
            local available=false;for _,x in ipairs(rule.availableAfter or{})do available=available or done(events,x)end
            if pending then events[id]=rec("reward_pending","strong")elseif rule.mode=="transient"then events[id]=rec("available","strong");normalizations[#normalizations+1]={eventId=id,to="available",reason="Victory Road boulders reset safely."}
            elseif rule.mode=="target_default"then events[id]=rec("not_applicable")elseif available then events[id]=rec("available","strong")else events[id]=rec("unseen")end end end end end
    local giovanni=flag(snapshot,"EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI")or item(snapshot,"EARTHBADGE")or flag(snapshot,"EVENT_GOT_TM27")
    events["VIRIDIAN_GYM.GIOVANNI_BATTLE"]=rec(giovanni and"completed"or(done(events,"VISIT.VIRIDIAN_GYM")and"available"or"unseen"),flag(snapshot,"EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI")and"certain"or"inferred")
    events["VIRIDIAN_GYM.EARTH_BADGE"]=rec(giovanni and"completed"or"unseen",item(snapshot,"EARTHBADGE")and"certain"or"inferred")
    local raw={flag(snapshot,"EVENT_BEAT_LORELEIS_ROOM_TRAINER_0")and true or false,flag(snapshot,"EVENT_BEAT_BRUNOS_ROOM_TRAINER_0")and true or false,flag(snapshot,"EVENT_BEAT_AGATHAS_ROOM_TRAINER_0")and true or false,flag(snapshot,"EVENT_BEAT_LANCE")and true or false,champion}
    if hof then raw={true,true,true,true,true}end;for i=4,1,-1 do if raw[i+1]then raw[i]=true end end
    local names={"LORELEI","BRUNO","AGATHA","LANCE","CHAMPION"};for i,n in ipairs(names)do local prev=i==1 or raw[i-1];events["POKEMON_LEAGUE."..n.."_BATTLE"]=rec(raw[i]and"completed"or(prev and(giovanni or i>1)and"available"or"unseen"),hof and raw[i]and"inferred"or"certain")end
    events["POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE"]=rec(hof and"completed"or(champion and"available"or"unseen"))
    events["KANTO_STORY.COMPLETE"]=rec(hof and"completed"or"available",nil,hof and"champion"or"incomplete")
    local counts={};for _,r in pairs(events)do counts[r.status]=(counts[r.status]or 0)+1 end
    return{schemaVersion="1.0.0",sliceId=SLICE,provenance={sourceGame=version,resolverVersion="lua-1.0.0"},events=events,conflicts=conflicts,normalizations=normalizations,summary={eventCount=#data.evidence.eventRules,statusCounts=counts,conflictCount=#conflicts}}
  end

  local function suffix(id)return id:match("([^.]+)$")end
  local function trim(v)return(v:gsub("^%s+",""):gsub("%s+$",""))end
  local function split(v,sep)local out,pos={},1;while true do local a,b=v:find(sep,pos,true);if not a then out[#out+1]=v:sub(pos);return out end;out[#out+1]=v:sub(pos,a-1);pos=b+1 end end
  local function term(v,a)v=trim(v);local n,list=v:match("^([A-Z0-9_]+) in %[(.-)%]$");if n then for x in list:gmatch("[^,]+")do if a[n]and a[n].status==trim(x)then return true end end return false end;n=v:match("^([A-Z0-9_]+) not completed$");if n then return a[n]and a[n].status~="completed"end;n=v:match("^([A-Z0-9_]+) completed$");if n then return a[n]and a[n].status=="completed"end;error("unsupported Champion reducer predicate: "..v)end
  local function condition(v,a)for _,branch in ipairs(split(v," or "))do local yes=true;for _,t in ipairs(split(branch," and "))do if not term(t,a)then yes=false;break end end;if yes then return true end end return false end
  local function effect(o)if o.op=="set_flag"or o.op=="set_trainer_defeated"then return"true"elseif o.op=="clear_flag"or o.op=="clear_trainer_defeated"then return"false"elseif o.op=="set_var"then return"var:"..o.value end;return o.op..":"..(o.quantity or 1)end
  function P.plan(canonical,inherited)
    inherited=inherited or{};local events=canonical.events;local ops,blockers,audits={},{},{}
    local function add(o,owner,reason)ops[#ops+1]={op=o.op,symbol=o.symbol,value=o.value,quantity=o.quantity,owner=owner,reason=reason}end
    local function block(code,msg)blockers[#blockers+1]={code=code,message=msg}end
    for _,x in ipairs(canonical.conflicts or{})do block("CANONICAL_CONFLICT",x.note or x.eventId)end
    for _,reducer in ipairs(data.rules.reducers)do local aliases={};for _,id in ipairs(reducer.inputs)do aliases[suffix(id)]=events[id]end
      for _,case in ipairs(reducer.cases)do if condition(case.when,aliases)then for _,o in ipairs(case.operations or{})do add(o,"reducer:"..reducer.id,"case:"..case.id)end;for _,o in ipairs((case.valueOperationsByPlayerStarter or{})[inherited.playerStarter]or{})do add(o,"reducer:"..reducer.id,"case:"..case.id)end end end
      for _,id in ipairs(reducer.inputs)do if events[id].status=="unresolved"then block("UNRESOLVED_REDUCER_INPUT",id)end end end
    for _,rule in ipairs(data.rules.eventRules)do local id,disp=rule.eventId,rule.disposition;local r=events[id]
      if disp~="reducer_input"and disp~="location_only"and disp~="lossy_no_write"and disp~="external_subsystem"then
        if r.status=="unresolved"then block("UNRESOLVED_DIRECT_EVENT",id)else local selected=r.status=="completed"and rule.completeOperations or rule.availableOperations
          if selected then for _,o in ipairs(selected)do add(o,"event:"..id,"canonical status:"..r.status)end
          elseif rule.target then local yes=r.status=="completed";local kind=(rule.profile=="trainer_base"or rule.target:match("^TRAINER_"))and(yes and"set_trainer_defeated"or"clear_trainer_defeated")or(yes and"set_flag"or"clear_flag");add({op=kind,symbol=rule.target},"event:"..id,"canonical status:"..r.status)end end end end
    local leader,badge,tm=done(events,"VIRIDIAN_GYM.GIOVANNI_BATTLE"),done(events,"VIRIDIAN_GYM.EARTH_BADGE"),done(events,"VIRIDIAN_GYM.TM_REWARD")
    if leader~=badge or(tm and not leader)then block("GIOVANNI_PROGRESS_COHERENCE","Giovanni, Earth Badge, and TM reward disagree.")end
    if(done(events,"ROUTE22.LATE_RIVAL_BATTLE")or done(events,"POKEMON_LEAGUE.CHAMPION_BATTLE"))and not({bulbasaur=true,squirtle=true,charmander=true})[inherited.playerStarter]then block("MISSING_INHERITED_STARTER_BRANCH","Rival branch needs a supported inherited starter.")end
    local league={"LORELEI","BRUNO","AGATHA","LANCE","CHAMPION"};for i=2,#league do if done(events,"POKEMON_LEAGUE."..league[i].."_BATTLE")and not done(events,"POKEMON_LEAGUE."..league[i-1].."_BATTLE")then block("LEAGUE_SEQUENCE_GAP","Elite Four completion is not a prefix.")end end
    if done(events,"POKEMON_LEAGUE.HALL_OF_FAME_COMPLETE")and not done(events,"POKEMON_LEAGUE.CHAMPION_BATTLE")then block("HALL_OF_FAME_WITHOUT_CHAMPION","Hall of Fame requires the Champion.")end
    local unique,by={},{ };for _,o in ipairs(ops)do local prior=by[o.symbol];if not prior then by[o.symbol]=o;unique[#unique+1]=o elseif effect(prior)~=effect(o)then block("CONTRADICTORY_WRITES","Different writes target "..o.symbol)else audits[#audits+1]={code="WRITE_DEDUPLICATED",message=o.symbol}end end
    return{planVersion="lua-1.0.0",sliceId=SLICE,readyToApply=#blockers==0,operations=unique,blockers=blockers,audits=audits,summary={operationCount=#unique,blockerCount=#blockers,auditCount=#audits}}
  end
  local function applyOne(session,o)local k,s=o.op,o.symbol
    if k=="set_flag"or k=="clear_flag"then if not Flags.IDS[s]then return nil,"unknown FireRed flag symbol: "..s end;Flags.setFlag(session,nil,s,k=="set_flag")
    elseif k=="set_var"then if not Flags.VAR_IDS[s]then return nil,"unknown FireRed var symbol: "..s end;Flags.setVar(session,nil,s,o.value)
    elseif k=="set_trainer_defeated"or k=="clear_trainer_defeated"then local id=data.runtimeIds.trainers[s];if not id then return nil,"unknown FireRed trainer symbol: "..s end;Flags.setTrainerDefeated(session,nil,id,k=="set_trainer_defeated")
    elseif k=="ensure_item"then local id=data.runtimeIds.items[s];if not id then return nil,"unknown FireRed item symbol: "..s end;if not Bag.has(session.bag,id,o.quantity or 1)and not Bag.add(session.bag,id,o.quantity or 1)then return nil,"no room for required item: "..s end
    elseif k=="remove_item"then local id=data.runtimeIds.items[s];if not id then return nil,"unknown FireRed item symbol: "..s end;if Bag.has(session.bag,id,1)then Bag.remove(session.bag,id,o.quantity or 1)end else return nil,"unsupported Champion operation: "..tostring(k)end;return true end
  local function verify(session,o)local k,s=o.op,o.symbol;if k=="set_flag"or k=="clear_flag"then return Flags.getFlag(session,nil,s)==(k=="set_flag")end;if k=="set_var"then return Flags.getVar(session,nil,s)==o.value end;if k=="set_trainer_defeated"or k=="clear_trainer_defeated"then return Flags.isTrainerDefeated(session,nil,data.runtimeIds.trainers[s])==(k=="set_trainer_defeated")end;if k=="ensure_item"then return Bag.has(session.bag,data.runtimeIds.items[s],o.quantity or 1)end;if k=="remove_item"then return not Bag.has(session.bag,data.runtimeIds.items[s],1)end;return false end
  function P.apply(session,plan)if not plan.readyToApply then return nil,plan.blockers end;for _,o in ipairs(plan.operations)do local ok,err=applyOne(session,o);if not ok then return nil,err end end;for _,o in ipairs(plan.operations)do if not verify(session,o)then return nil,"post-write verification failed: "..o.symbol end end;return{applied=#plan.operations,verified=true}end
  function P.run(session,snapshot,version,inherited)local canonical=P.resolve(snapshot,version);local plan=P.plan(canonical,inherited);if not plan.readyToApply then return nil,{canonical=canonical,plan=plan}end;local write,err=P.apply(session,plan);if not write then return nil,{canonical=canonical,plan=plan,writerError=err}end;return{canonical=canonical,plan=plan,writer=write}end
  return P
end

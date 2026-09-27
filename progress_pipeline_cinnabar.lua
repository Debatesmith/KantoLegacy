-- Kanto Legacy embedded Stage 7 runtime: Seafoam, Power Plant, and Cinnabar.
local Flags=require("src.core.game3.scripting.flags")
local Bag=require("src.core.game3.bag")

return function(data)
  assert(type(data)=="table" and data.evidence and data.rules and data.runtimeIds,"Cinnabar progress data is missing")
  local P={};local SLICE="KANTO_SEAFOAM_POWER_PLANT_CINNABAR_COMPLETE"
  local MAPS={ROUTE_19="ROUTE_19",ROUTE_20="ROUTE_20",POWER_PLANT="POWER_PLANT",CINNABAR_ISLAND="CINNABAR_ISLAND",
    CINNABAR_POKECENTER="CINNABAR_POKEMON_CENTER",CINNABAR_MART="CINNABAR_MART",CINNABAR_LAB="CINNABAR_LAB_ENTRANCE",
    CINNABAR_LAB_TRADE_ROOM="CINNABAR_LAB_LOUNGE",CINNABAR_LAB_METRONOME_ROOM="CINNABAR_LAB_RESEARCH_ROOM",
    CINNABAR_LAB_FOSSIL_ROOM="CINNABAR_LAB_EXPERIMENT_ROOM",POKEMON_MANSION_1F="POKEMON_MANSION_1F",
    POKEMON_MANSION_2F="POKEMON_MANSION_2F",POKEMON_MANSION_3F="POKEMON_MANSION_3F",POKEMON_MANSION_B1F="POKEMON_MANSION_B1F",
    CINNABAR_GYM="CINNABAR_GYM",SEAFOAM_ISLANDS_1F="SEAFOAM_ISLANDS_1F",SEAFOAM_ISLANDS_B1F="SEAFOAM_ISLANDS_B1F",
    SEAFOAM_ISLANDS_B2F="SEAFOAM_ISLANDS_B2F",SEAFOAM_ISLANDS_B3F="SEAFOAM_ISLANDS_B3F",SEAFOAM_ISLANDS_B4F="SEAFOAM_ISLANDS_B4F"}
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
  for _,id in ipairs({"SEAFOAM.B3F_CURRENT_STOPPED","SEAFOAM.B4F_CURRENT_STOPPED","POKEMON_MANSION.SECRET_KEY","POKEMON_MANSION.SWITCH_RUNTIME",
    "CINNABAR_LAB.HELIX_REVIVAL","CINNABAR_LAB.DOME_REVIVAL","CINNABAR_LAB.AMBER_REVIVAL","CINNABAR_GYM.BLAINE_BATTLE",
    "CINNABAR_GYM.VOLCANO_BADGE","CINNABAR_GYM.TM_REWARD","CINNABAR_ARC.DEPARTURE_READY"})do SPECIAL[id]=true end

  function P.resolve(snapshot,sourceVersion)
    local version=tostring(sourceVersion or snapshot.version or"unknown"):lower();local events,conflicts,normalizations={},{},{}
    local current=tostring((snapshot.player or{}).map or"");local activity={};local function mark(x)activity[x]=true end
    if MAPS[current]then mark(MAPS[current])end
    if current=="ROUTE_21"then mark(((snapshot.player or{}).y or 0)<35 and"ROUTE_21_NORTH"or"ROUTE_21_SOUTH")end
    for n=19,21 do if prefix(snapshot.flags,"EVENT_BEAT_ROUTE_"..n.."_TRAINER_")then mark(n==21 and"ROUTE_21_NORTH"or"ROUTE_"..n)end end
    for k,v in pairs(snapshot.flags or{})do if v and k:find("SEAFOAM",1,true)then mark("SEAFOAM_ISLANDS_1F")end end
    if flag(snapshot,"EVENT_BEAT_ARTICUNO")then mark("SEAFOAM_ISLANDS_1F")end
    if prefix(snapshot.flags,"EVENT_POWER_PLANT")or flag(snapshot,"EVENT_BEAT_ZAPDOS")or prefix(snapshot.itemsTaken,"POWER_PLANT_")then mark("POWER_PLANT")end
    for k,v in pairs(snapshot.flags or{})do if v and(k:find("MANSION",1,true)or k:find("BLAINE",1,true)or k:find("CINNABAR_GYM",1,true)or k:find("GAVE_FOSSIL",1,true))then mark("CINNABAR_ISLAND")end end
    if prefix(snapshot.flags,"EVENT_MANSION")or prefix(snapshot.itemsTaken,"POKEMON_MANSION_")then mark("POKEMON_MANSION_1F")end
    if flag(snapshot,"EVENT_BEAT_BLAINE")or prefix(snapshot.flags,"EVENT_CINNABAR_GYM")then mark("CINNABAR_GYM")end
    for _,rule in ipairs(data.evidence.eventRules)do local id=rule.eventId
      if id:sub(1,6)=="VISIT."then local area=id:sub(7);local hit=activity[area]or(snapshot.visited or{})[area]or((area=="ROUTE_21_NORTH"or area=="ROUTE_21_SOUTH")and(snapshot.visited or{}).ROUTE_21);events[id]=rec(hit and"completed"or"unseen","strong")end end
    for _,rule in ipairs(data.evidence.eventRules)do local id=rule.eventId
      if id:sub(1,6)~="VISIT."and not SPECIAL[id]then
        if contains(rule.notApplicableVersions,version)then events[id]=rec("not_applicable")
        else local hits={};for _,x in ipairs(refs(rule,version))do if lookup(snapshot,x)then hits[#hits+1]=x end end
          if #hits>0 then events[id]=rec("completed",rule.mode=="derived"and"strong"or"certain")
          else local pending=false;for _,x in ipairs(rule.pendingAfter or{})do pending=pending or done(events,x)end
            local available=false;for _,x in ipairs(rule.availableAfter or{})do available=available or done(events,x)end
            if pending then events[id]=rec("reward_pending","strong")elseif rule.mode=="transient"then events[id]=rec("available","strong")
            elseif rule.mode=="target_default"then events[id]=rec("not_applicable")elseif available then events[id]=rec("available","strong")else events[id]=rec("unseen")end end end end end
    local b4=flag(snapshot,"EVENT_SEAFOAM4_BOULDER1_DOWN_HOLE")and flag(snapshot,"EVENT_SEAFOAM4_BOULDER2_DOWN_HOLE")
    -- A boulder cannot reach B4F without passing through its B3F hole. Some
    -- older Yellow saves retain only the terminal B4F pair, so that pair is
    -- also durable proof of the completed B3F current stage.
    local b3=(flag(snapshot,"EVENT_SEAFOAM3_BOULDER1_DOWN_HOLE")and flag(snapshot,"EVENT_SEAFOAM3_BOULDER2_DOWN_HOLE"))or b4
    events["SEAFOAM.B3F_CURRENT_STOPPED"]=rec(b3 and"completed"or"available")
    events["SEAFOAM.B4F_CURRENT_STOPPED"]=rec(b4 and"completed"or"available")
    events["POKEMON_MANSION.SWITCH_RUNTIME"]=rec("available","strong");normalizations[#normalizations+1]={eventId="POKEMON_MANSION.SWITCH_RUNTIME",to="available"}
    local blaine=flag(snapshot,"EVENT_BEAT_BLAINE")and true or false
    local secret=lookup(snapshot,"itemsTaken.POKEMON_MANSION_B1F_obj_8")or item(snapshot,"SECRET_KEY")or blaine
    events["POKEMON_MANSION.SECRET_KEY"]=rec(secret and"completed"or(done(events,"VISIT.POKEMON_MANSION_B1F")and"available"or"unseen"),blaine and"inferred"or"certain")
    local active=flag(snapshot,"EVENT_GAVE_FOSSIL_TO_LAB")or flag(snapshot,"EVENT_LAB_STILL_REVIVING_FOSSIL")or flag(snapshot,"EVENT_LAB_HANDING_OVER_FOSSIL_MON")
    local acquired={HELIX=flag(snapshot,"EVENT_GOT_HELIX_FOSSIL"),DOME=flag(snapshot,"EVENT_GOT_DOME_FOSSIL"),AMBER=flag(snapshot,"EVENT_GOT_OLD_AMBER")}
    local names={HELIX="HELIX_FOSSIL",DOME="DOME_FOSSIL",AMBER="OLD_AMBER"}
    local revivedSpecies={HELIX={OMANYTE=true,OMASTAR=true},DOME={KABUTO=true,KABUTOPS=true},AMBER={AERODACTYL=true}}
    local function hasRevived(n)
      local family=revivedSpecies[n];local owned=snapshot.pokedex and snapshot.pokedex.owned or{}
      for species in pairs(family)do if owned[species]then return true end end
      for _,mon in pairs(snapshot.party or{})do if mon and family[mon.species]then return true end end
      for _,box in pairs(snapshot.boxes or{})do for _,mon in pairs(box or{})do if mon and family[mon.species]then return true end end end
      return false
    end
    local missing=0
    for n,a in pairs(acquired)do if a and not item(snapshot,names[n])and not hasRevived(n)then missing=missing+1 end end
    for n,a in pairs(acquired)do local id="CINNABAR_LAB."..n.."_REVIVAL";local owned=item(snapshot,names[n])
      if not a then events[id]=rec("unseen",nil,"not_owned")elseif owned then events[id]=rec("available",nil,"available")
      elseif hasRevived(n) then events[id]=rec("completed","strong","completed")
      elseif active and missing==1 then events[id]=rec("available","inferred","available");normalizations[#normalizations+1]={eventId=id,to="available"}
      elseif active then events[id]=rec("unresolved","none","unknown");conflicts[#conflicts+1]={eventId=id,note="Ambiguous active fossil transaction."}
      else events[id]=rec("completed","strong","completed")end end
    local badge=blaine or item(snapshot,"VOLCANOBADGE");local tm=flag(snapshot,"EVENT_GOT_TM38")or item(snapshot,"TM_FIRE_BLAST")
    events["CINNABAR_GYM.BLAINE_BATTLE"]=rec((blaine or badge)and"completed"or(secret and"available"or"unseen"),badge and not blaine and"inferred"or"certain")
    events["CINNABAR_GYM.VOLCANO_BADGE"]=rec((blaine or badge)and"completed"or"unseen",blaine and not badge and"inferred"or"certain")
    events["CINNABAR_GYM.TM_REWARD"]=rec(tm and"completed"or(blaine and"reward_pending"or"unseen"),blaine and not tm and"strong"or"certain")
    events["CINNABAR_ARC.DEPARTURE_READY"]=rec((blaine or badge)and"completed"or"available",nil,(blaine or badge)and"ready"or"incomplete")
    local counts={};for _,r in pairs(events)do counts[r.status]=(counts[r.status]or 0)+1 end
    return{schemaVersion="1.0.0",sliceId=SLICE,provenance={sourceGame=version,resolverVersion="lua-1.0.0"},events=events,conflicts=conflicts,normalizations=normalizations,summary={eventCount=#data.evidence.eventRules,statusCounts=counts,conflictCount=#conflicts}}
  end

  local function suffix(id)return id:match("([^.]+)$")end
  local function trim(v)return(v:gsub("^%s+",""):gsub("%s+$",""))end
  local function split(v,sep)local out,pos={},1;while true do local a,b=v:find(sep,pos,true);if not a then out[#out+1]=v:sub(pos);return out end;out[#out+1]=v:sub(pos,a-1);pos=b+1 end end
  local function term(v,a)v=trim(v);local n=v:match("^([A-Z0-9_]+) not completed$");if n then return a[n]and a[n].status~="completed"end;n=v:match("^([A-Z0-9_]+) completed$");if n then return a[n]and a[n].status=="completed"end;error("unsupported Cinnabar reducer predicate: "..v)end
  local function condition(v,a)for _,branch in ipairs(split(v," or "))do local yes=true;for _,t in ipairs(split(branch," and "))do if not term(t,a)then yes=false;break end end;if yes then return true end end return false end
  local function effect(o)if o.op=="set_flag"or o.op=="set_trainer_defeated"then return"true"elseif o.op=="clear_flag"or o.op=="clear_trainer_defeated"then return"false"elseif o.op=="set_var"then return"var:"..o.value end;return o.op..":"..(o.quantity or 1)end
  function P.plan(canonical,inherited)
    inherited=inherited or{};local events=canonical.events;local ops,blockers,audits={},{},{}
    local function add(o,owner,reason)ops[#ops+1]={op=o.op,symbol=o.symbol,value=o.value,quantity=o.quantity,owner=owner,reason=reason}end
    local function block(code,msg)blockers[#blockers+1]={code=code,message=msg}end
    for _,x in ipairs(canonical.conflicts or{})do block("CANONICAL_CONFLICT",x.note or x.eventId)end
    for _,reducer in ipairs(data.rules.reducers)do local aliases={};for _,id in ipairs(reducer.inputs)do aliases[suffix(id)]=events[id]end
      for _,case in ipairs(reducer.cases)do if condition(case.when,aliases)then for _,o in ipairs(case.operations or{})do add(o,"reducer:"..reducer.id,"case:"..case.id)end end end
      for _,id in ipairs(reducer.inputs)do if events[id].status=="unresolved"then block("UNRESOLVED_REDUCER_INPUT",id)end end end
    for _,rule in ipairs(data.rules.eventRules)do local id,disp=rule.eventId,rule.disposition;local r=events[id]
      if disp~="reducer_input"and disp~="location_only"and disp~="lossy_no_write"and disp~="external_subsystem"then
        if r.status=="unresolved"then block("UNRESOLVED_DIRECT_EVENT",id)else local selected=r.status=="completed"and rule.completeOperations or rule.availableOperations
          if selected then for _,o in ipairs(selected)do add(o,"event:"..id,"canonical status:"..r.status)end
          elseif rule.target then local yes=r.status=="completed";local kind=(rule.profile=="trainer_base"or rule.target:match("^TRAINER_"))and(yes and"set_trainer_defeated"or"clear_trainer_defeated")or(yes and"set_flag"or"clear_flag");add({op=kind,symbol=rule.target},"event:"..id,"canonical status:"..r.status)end end end end
    local forward=false;for id,r in pairs(events)do if id~="CINNABAR_ARC.DEPARTURE_READY"and r.status=="completed"then forward=true end end
    if forward and inherited.surfAccess~=true then block("SURF_ACCESS_REQUIRED","Late south-Kanto progress requires inherited Surf access.")end
    if done(events,"SEAFOAM.B4F_CURRENT_STOPPED")and not done(events,"SEAFOAM.B3F_CURRENT_STOPPED")then block("SEAFOAM_CURRENT_ORDER","B4F current requires B3F current.")end
    local leader,badge,tm=done(events,"CINNABAR_GYM.BLAINE_BATTLE"),done(events,"CINNABAR_GYM.VOLCANO_BADGE"),done(events,"CINNABAR_GYM.TM_REWARD")
    if leader and not done(events,"POKEMON_MANSION.SECRET_KEY")then block("SECRET_KEY_REQUIRED","Blaine requires the Secret Key.")end
    if leader~=badge or(tm and not leader)then block("BLAINE_PROGRESS_COHERENCE","Blaine, badge, and TM38 disagree.")end
    for _,id in ipairs({"CINNABAR_LAB.HELIX_REVIVAL","CINNABAR_LAB.DOME_REVIVAL","CINNABAR_LAB.AMBER_REVIVAL"})do if done(events,id)and inherited.fossilPayloadReconciled~=true then block("FOSSIL_PAYLOAD_RECONCILIATION_REQUIRED",id)end end
    local ready=events["CINNABAR_ARC.DEPARTURE_READY"];if((ready.status=="completed"and ready.value=="ready")~= (leader and badge))then block("CINNABAR_BOUNDARY_COHERENCE","Boundary must equal Blaine plus badge.")end
    local unique,by={},{ };for _,o in ipairs(ops)do local prior=by[o.symbol];if not prior then by[o.symbol]=o;unique[#unique+1]=o elseif effect(prior)~=effect(o)then block("CONTRADICTORY_WRITES","Different writes target "..o.symbol)else audits[#audits+1]={code="WRITE_DEDUPLICATED",message=o.symbol}end end
    return{planVersion="lua-1.0.0",sliceId=SLICE,readyToApply=#blockers==0,operations=unique,blockers=blockers,audits=audits,summary={operationCount=#unique,blockerCount=#blockers,auditCount=#audits}}
  end
  local function applyOne(session,o)local k,s=o.op,o.symbol
    if k=="set_flag"or k=="clear_flag"then if not Flags.IDS[s]then return nil,"unknown FireRed flag symbol: "..s end;Flags.setFlag(session,nil,s,k=="set_flag")
    elseif k=="set_var"then if not Flags.VAR_IDS[s]then return nil,"unknown FireRed var symbol: "..s end;Flags.setVar(session,nil,s,o.value)
    elseif k=="set_trainer_defeated"or k=="clear_trainer_defeated"then local id=data.runtimeIds.trainers[s];if not id then return nil,"unknown FireRed trainer symbol: "..s end;Flags.setTrainerDefeated(session,nil,id,k=="set_trainer_defeated")
    elseif k=="ensure_item"then local id=data.runtimeIds.items[s];if not id then return nil,"unknown FireRed item symbol: "..s end;if not Bag.has(session.bag,id,o.quantity or 1)and not Bag.add(session.bag,id,o.quantity or 1)then return nil,"no room for required item: "..s end
    elseif k=="remove_item"then local id=data.runtimeIds.items[s];if not id then return nil,"unknown FireRed item symbol: "..s end;if Bag.has(session.bag,id,1)then Bag.remove(session.bag,id,o.quantity or 1)end else return nil,"unsupported Cinnabar operation: "..tostring(k)end;return true end
  local function verify(session,o)local k,s=o.op,o.symbol;if k=="set_flag"or k=="clear_flag"then return Flags.getFlag(session,nil,s)==(k=="set_flag")end;if k=="set_var"then return Flags.getVar(session,nil,s)==o.value end;if k=="set_trainer_defeated"or k=="clear_trainer_defeated"then return Flags.isTrainerDefeated(session,nil,data.runtimeIds.trainers[s])==(k=="set_trainer_defeated")end;if k=="ensure_item"then return Bag.has(session.bag,data.runtimeIds.items[s],o.quantity or 1)end;if k=="remove_item"then return not Bag.has(session.bag,data.runtimeIds.items[s],1)end;return false end
  function P.apply(session,plan)if not plan.readyToApply then return nil,plan.blockers end;for _,o in ipairs(plan.operations)do local ok,err=applyOne(session,o);if not ok then return nil,err end end;for _,o in ipairs(plan.operations)do if not verify(session,o)then return nil,"post-write verification failed: "..o.symbol end end;return{applied=#plan.operations,verified=true}end
  function P.run(session,snapshot,version,inherited)local canonical=P.resolve(snapshot,version);local plan=P.plan(canonical,inherited);if not plan.readyToApply then return nil,{canonical=canonical,plan=plan}end;local write,err=P.apply(session,plan);if not write then return nil,{canonical=canonical,plan=plan,writerError=err}end;return{canonical=canonical,plan=plan,writer=write}end
  return P
end

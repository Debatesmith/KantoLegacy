-- Only import-time, source-derived target facts may repair historical flags.
-- This module deliberately has no SaveData or external source-slot reader.
local Evidence={}
Evidence.trainers={338,375,339,376,340,378,379,286,341,380,342,383,
  343,382,344,387,345,389,390,391}
Evidence.caveFlags={
 "FLAG_HIDE_CERULEAN_CAVE_1F_FULL_RESTORE","FLAG_HIDE_CERULEAN_CAVE_1F_MAX_ELIXIR",
 "FLAG_HIDE_CERULEAN_CAVE_1F_NUGGET","FLAG_HIDE_CERULEAN_CAVE_2F_PP_UP",
 "FLAG_HIDE_CERULEAN_CAVE_2F_ULTRA_BALL","FLAG_HIDE_CERULEAN_CAVE_2F_FULL_RESTORE",
 "FLAG_HIDE_CERULEAN_CAVE_B1F_ULTRA_BALL","FLAG_HIDE_CERULEAN_CAVE_B1F_MAX_REVIVE",
 "FLAG_FOUGHT_MEWTWO","FLAG_HIDE_MEWTWO"}
function Evidence.capture(session,Flags)
  local snapshot={schema=1,trainers={},caveFlags={}}
  for _,id in ipairs(Evidence.trainers) do
    snapshot.trainers[id]=Flags.isTrainerDefeated(session,nil,id)==true
  end
  for _,symbol in ipairs(Evidence.caveFlags) do
    snapshot.caveFlags[symbol]=Flags.getFlag(session,nil,symbol)==true
  end
  return snapshot
end
function Evidence.apply(session,legacy,Flags,group)
  local snapshot=legacy.repairEvidence
  if type(snapshot)~="table" or snapshot.schema~=1 then
    return 0,"unresolved_missing_import_evidence"
  end
  local entries=group=="cave" and snapshot.caveFlags or snapshot.trainers
  if type(entries)~="table" then return 0,"unresolved_missing_import_evidence" end
  local added,missing=0,false
  local keys=group=="cave" and Evidence.caveFlags or Evidence.trainers
  for _,key in ipairs(keys) do
    local relevant=group=="cave" or (group=="silph11" and key>=390)
      or (group=="silph3to10" and key<390)
    if relevant then
      local value=entries[key]
      if value==nil then value=entries[tostring(key)] end
      if type(value)~="boolean" then missing=true
      elseif value then
        local present=group=="cave" and Flags.getFlag(session,nil,key)
          or (group~="cave" and Flags.isTrainerDefeated(session,nil,key))
        if not present then
          if group=="cave" then Flags.setFlag(session,nil,key,true)
          else Flags.setTrainerDefeated(session,nil,key,true) end
          added=added+1
        end
      end
    end
  end
  return added,missing and "partial_import_evidence" or "import_snapshot_additive"
end
function Evidence.versionAtLeast(value,minimum)
    local a,b,c=tostring(value):match("^(%d+)%.(%d+)%.(%d+)$")
    local x,y,z=minimum:match("^(%d+)%.(%d+)%.(%d+)$")
    if not a then return false end
    a,b,c,x,y,z=tonumber(a),tonumber(b),tonumber(c),tonumber(x),tonumber(y),tonumber(z)
    if a~=x then return a>x end
    if b~=y then return b>y end
    return c>=z
  end

return Evidence

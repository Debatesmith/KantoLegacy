-- Commit only newly allocated FireRed slots. All cleanup is scoped to this call.
local Persistence={}
function Persistence.commit(SaveData,game,saveTable,session,label)
  for _,name in ipairs({"activeSlot","listSlots","createSlot","writeSlot",
      "renameSlot","setActiveSlot","deleteSlot"}) do
    if type(SaveData[name])~="function" then return nil,"Missing save API: " .. name end
  end
  if type(game)~="table" or type(game._enterField)~="function" then
    return nil,"FireRed cannot activate the imported session"
  end
  if game.adoptSave~=nil and type(game.adoptSave)~="function" then
    return nil,"FireRed adoptSave is not callable"
  end
  local before,previous,slotId,committed,stage={},nil,nil,false,"preflight"
  local function slots()
    local list=SaveData.listSlots("firered")
    assert(type(list)=="table","Cannot enumerate FireRed slots")
    local result={}
    for _,entry in ipairs(list) do
      assert(type(entry)=="table" and type(entry.id)=="string","Invalid slot registry")
      result[entry.id]=entry
    end
    return result
  end
  local function required(value,detail)
    if not value then error(tostring(detail or (stage .. " failed")),0) end
    return value
  end
  local ok,err=pcall(function()
    previous=SaveData.activeSlot("firered")
    before=slots()
    stage="allocation"
    local allocated=required(SaveData.createSlot("firered"))
    assert(type(allocated)=="string" and allocated~="","Invalid new slot ID")
    slotId=allocated
    assert(not before[slotId] and slotId~=previous,"Allocator returned an existing slot; import refused")
    stage="write"
    required(SaveData.writeSlot("firered",slotId,saveTable))
    stage="rename"
    required(SaveData.renameSlot("firered",slotId,label))
    stage="activation"
    local result,detail=SaveData.setActiveSlot("firered",slotId)
    if result==false or (result==nil and detail~=nil) then error(tostring(detail or "Activation failed"),0) end
    required(SaveData.activeSlot("firered")==slotId,"Active slot verification failed")
    -- The persisted slot is now committed. A field/engine exception cannot be
    -- rolled back safely: the engine may already reference the imported session.
    -- Keep its disk save and active ID; never aim that session at an older slot.
    committed=true
    stage="field entry"
    if game.adoptSave then
      local adopted,why=game:adoptSave(session,true)
      if adopted==false then error(tostring(why or "adoptSave failed"),0) end
    end
    local entered,why=game:_enterField(session,"continue")
    if entered==false then error(tostring(why or "Field entry failed"),0) end
  end)
  if ok then return true,slotId end
  local message="Import " .. stage .. " failed: " .. tostring(err)
  if committed then
    return nil,message .. ". Import saved in " .. slotId .. "; restart and continue that slot."
  end
  if stage=="preflight" then return nil,message end
  -- createSlot may register an empty slot and then throw before returning its ID.
  -- Recover only a single new empty registration observed around this call.
  if not slotId then
    local listed,after=pcall(slots)
    if listed then
      local candidates={}
      for id,entry in pairs(after) do
        if not before[id] then candidates[#candidates+1]={id=id,exists=entry.exists} end
      end
      if #candidates==1 and candidates[1].exists==false then slotId=candidates[1].id
      elseif #candidates>0 then
        return nil,message .. "; cleanup unresolved: allocation ownership is ambiguous"
      end
    else return nil,message .. "; cleanup unresolved: cannot inspect slot registry" end
  end
  if not slotId or before[slotId] or slotId==previous then return nil,message end
  local cleaned,cleanupErr=pcall(function()
    local active=SaveData.activeSlot("firered")
    if active~=previous and previous then
      SaveData.setActiveSlot("firered",previous)
      required(SaveData.activeSlot("firered")==previous,"Cannot restore previous active slot")
    end
    required(SaveData.deleteSlot("firered",slotId))
    required(slots()[slotId]==nil,"New slot remains registered after cleanup")
    required(SaveData.activeSlot("firered")==previous,"Previous active slot was not restored")
  end)
  if not cleaned then message=message .. "; cleanup failed for " .. slotId .. ": " .. tostring(cleanupErr) end
  return nil,message
end
return Persistence

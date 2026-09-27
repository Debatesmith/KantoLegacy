-- Cartridge identity constraints. Pure Lua 5.1; no engine state or save writes.
local Identity = {}
local function xor16(a,b)
  local value,place=0,1
  for _=1,16 do
    local x,y=a%2,b%2
    if x~=y then value=value+place end
    a,b,place=math.floor(a/2),math.floor(b/2),place*2
  end
  return value
end
function Identity.shiny(pid,tid,sid)
  return xor16(xor16(tid,sid),xor16(math.floor(pid/65536),pid%65536))<8
end
function Identity.constrain(pid,tid,sid,wantShiny)
  pid=math.floor(pid)%4294967296
  tid,sid=math.floor(tid)%65536,math.floor(sid)%65536
  if Identity.shiny(pid,tid,sid)==wantShiny then return pid end
  local low,high=pid%65536,math.floor(pid/65536)
  if not wantShiny then
    -- Changing the high half by 25 preserves nature, all gender bits and parity.
    return pid+(high<=65510 and 25 or -25)*65536
  end
  local nature=pid%25
  local owner=xor16(tid,sid)
  for step=0,255 do
    local candidateLow=(low+step*256)%65536
    for value=0,7 do
      local candidateHigh=xor16(xor16(owner,candidateLow),value)
      local candidate=candidateHigh*65536+candidateLow
      if candidate%25==nature then return candidate end
    end
  end
  error("No PID satisfies shiny, nature and gender constraints")
end
return Identity

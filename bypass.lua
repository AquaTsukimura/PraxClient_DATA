if not MEM then
  print("blud did you even try to use my custom lua loader?")
  return
end

MEM[0x4832EF]("http://" .. MEM[0x384FEA] .. "/files/symbols.lua")

if not __int64_t then
  print("Failed to load symbols")
  return
end

local EntityPlayer = (__int64_t*(MEM[0x8333EF]))
if not EntityPlayer then
  EntityPlayer = __int32_t*({})
end

function bypass()
  togBypass = not togBypass
end

function EntityPlayer:onUpdate(thiz)
  thiz = __int64_t*(MEM[0x17EF382])
  if thiz then
    thiz = MEM[0x348EF8](thiz)
    if thiz then
      thiz.onGround = togBypass
    end
  end
end

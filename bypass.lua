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


#light off
fill -1184 41 -1783 -1218 25 -1754 minecraft:yellow_glazed_terracotta replace minecraft:glowstone

fill -1198 32 -1780 -1188 32 -1766 minecraft:blue_wool replace minecraft:beacon

#screen off
fill -1184 41 -1783 -1218 25 -1754 minecraft:black_wool replace minecraft:end_gateway

#sound off
stopsound @e[type=minecraft:player] ambient

#power off sound
playsound minecraft:block.beacon.deactivate ambient @e[type=minecraft:player] -1213.63 31.41 -1761.00 2 0.7

#power off
setblock -1193 25 -1766 minecraft:redstone_block

#kill actors

execute positioned -1192.00 34.60 -1772.89 run kill @e[type=minecraft:armor_stand,distance=..3]

#power off

setblock -1195 32 -1773 minecraft:air

setblock -1194 34 -1772 air

setblock -1194 35 -1772 air

#stage effect
particle minecraft:cloud -1191.00 35 -1771.90 4 1 4 0.01 200
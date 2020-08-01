setblock -1197 32 -1748 minecraft:redstone_block

#light on

fill -1184 41 -1783 -1218 25 -1754 minecraft:glowstone replace minecraft:yellow_glazed_terracotta

#screen on

fill -1184 41 -1783 -1218 25 -1754 minecraft:end_gateway replace minecraft:black_wool

#light on

fill -1198 32 -1780 -1188 32 -1766 minecraft:beacon replace minecraft:blue_wool

#power on sound
playsound minecraft:block.beacon.activate ambient @e[type=minecraft:player] -1213.63 31.41 -1761.00 2 0.7

#play alpha
playsound minecraft:music.credits ambient @e[type=minecraft:player] -1197 34 -1775 3

playsound minecraft:music.credits ambient @e[type=minecraft:player] -1211 38 -1773 3

playsound minecraft:music.credits ambient @e[type=minecraft:player] -1204 38 -1757 3

playsound minecraft:music.credits ambient @e[type=minecraft:player] -1193 34 -1768 3

#power

setblock -1193 25 -1770 minecraft:redstone_block

setblock -1195 32 -1773 minecraft:redstone_block

#on stage
particle minecraft:cloud -1191.00 35 -1771.90 4 1 4 0.01 200
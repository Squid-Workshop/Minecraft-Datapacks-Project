#heart effect

execute if block -1212 38 -1761 minecraft:birch_button[powered=true] run particle minecraft:heart -1193 36 -1772 5 3 5 1 5 normal

#fire effect

execute if block -1211 38 -1760 minecraft:birch_button[powered=true] run particle minecraft:lava -1195.70 35.00 -1773.22 0.01 0.1 0.01 0.001 2

execute if block -1211 38 -1760 minecraft:birch_button[powered=true] run particle minecraft:lava -1193.50 35 -1768.50 0.01 0.1 0.01 0.001 2

#firework effect

execute if block -1212 37 -1760 minecraft:lever[powered=true] run particle minecraft:firework -1191.00 37 -1771.90 3 2 3 0.01 5

#notes effect

execute if block -1213 37 -1761 minecraft:lever[powered=true] run particle minecraft:note -1191.00 35 -1771.90 3 1 3 1 3 normal

#snow fall effect

execute if block -1213 37 -1761 minecraft:lever[powered=true] run particle minecraft:effect -1191.00 36 -1771.90 3 2 3 1 3 normal


#stop music

execute if block -1213 39 -1761 #minecraft:buttons[powered=true] run stopsound @e[type=minecraft:player] ambient

#open music control

execute if block -1214 39 -1761 #minecraft:buttons[powered=true] run setblock -1210 26 -1783 minecraft:redstone_block

#close music control

execute if block -1214 39 -1761 #minecraft:buttons[powered=false] run setblock -1210 26 -1783 minecraft:red_concrete



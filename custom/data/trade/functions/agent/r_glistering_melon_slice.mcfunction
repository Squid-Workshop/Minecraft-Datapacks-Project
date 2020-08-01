scoreboard players set @p[distance=0,scores={Balance=6..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:glistering_melon_slice"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 6
clear @p[distance=0,scores={chosen=10}] glistering_melon_slice{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] glistering_melon_slice{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

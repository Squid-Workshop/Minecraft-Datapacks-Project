scoreboard players set @p[distance=0,scores={Balance=3..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:sweet_berries"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 3
clear @p[distance=0,scores={chosen=10}] sweet_berries{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] sweet_berries{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

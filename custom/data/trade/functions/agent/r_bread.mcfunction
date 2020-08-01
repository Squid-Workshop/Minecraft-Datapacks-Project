scoreboard players set @p[distance=0,scores={Balance=7..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:bread"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 7
clear @p[distance=0,scores={chosen=10}] bread{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] bread{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

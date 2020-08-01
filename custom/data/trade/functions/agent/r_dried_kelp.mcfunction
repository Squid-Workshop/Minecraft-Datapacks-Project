scoreboard players set @p[distance=0,scores={Balance=2..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:dried_kelp"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 2
clear @p[distance=0,scores={chosen=10}] dried_kelp{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] dried_kelp{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

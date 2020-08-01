scoreboard players set @p[distance=0,scores={Balance=15..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:pumpkin_pie"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 15
clear @p[distance=0,scores={chosen=10}] pumpkin_pie{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] pumpkin_pie{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

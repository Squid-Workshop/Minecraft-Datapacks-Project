scoreboard players set @p[distance=0,scores={Balance=5..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:apple"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 5
clear @p[distance=0,scores={chosen=10}] apple{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] apple{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

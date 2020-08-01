scoreboard players set @p[distance=0,scores={Balance=30..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:golden_carrot"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 30
clear @p[distance=0,scores={chosen=10}] golden_carrot{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] golden_carrot{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

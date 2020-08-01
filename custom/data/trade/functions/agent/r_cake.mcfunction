scoreboard players set @p[distance=0,scores={Balance=50..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:cake"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 50
clear @p[distance=0,scores={chosen=10}] cake{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] cake{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

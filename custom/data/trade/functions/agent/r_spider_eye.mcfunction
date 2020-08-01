scoreboard players set @p[distance=0,scores={Balance=4..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:spider_eye"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 4
clear @p[distance=0,scores={chosen=10}] spider_eye{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] spider_eye{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

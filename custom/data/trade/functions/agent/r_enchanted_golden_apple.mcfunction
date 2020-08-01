scoreboard players set @p[distance=0,scores={Balance=300..},nbt={Inventory:[{tag:{Tags:["xmb"]},id:"minecraft:enchanted_golden_apple"}]}] chosen 10
scoreboard players remove @p[distance=0,scores={chosen=10}] Balance 300
clear @p[distance=0,scores={chosen=10}] enchanted_golden_apple{Tags:["xmb"]} 1
give @p[distance=0,scores={chosen=10}] enchanted_golden_apple{Tags:["xmbsold"]} 1
scoreboard players reset @p[distance=0,scores={chosen=10}] chosen

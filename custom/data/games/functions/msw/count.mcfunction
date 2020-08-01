scoreboard players reset @e[tag=cmn,distance=..0.2] Count
scoreboard players set @e[tag=cmn,distance=..0.2,scores={life=0}] Count 0
###
execute positioned ~ ~ ~-7 if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run execute positioned ~ ~ ~7 run scoreboard players add @e[tag=cmn,distance=..0.2,scores={life=0}] Count 1
execute positioned ~ ~ ~7 if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run execute positioned ~ ~ ~-7 run scoreboard players add @e[tag=cmn,distance=..0.2,scores={life=0}] Count 1
execute positioned ~7 ~ ~ if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run execute positioned ~-7 ~ ~ run scoreboard players add @e[tag=cmn,distance=..0.2,scores={life=0}] Count 1
execute positioned ~-7 ~ ~ if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run execute positioned ~7 ~ ~ run scoreboard players add @e[tag=cmn,distance=..0.2,scores={life=0}] Count 1
execute positioned ~7 ~ ~-7 if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run execute positioned ~-7 ~ ~7 run scoreboard players add @e[tag=cmn,distance=..0.2,scores={life=0}] Count 1
execute positioned ~7 ~ ~7 if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run execute positioned ~-7 ~ ~-7 run scoreboard players add @e[tag=cmn,distance=..0.2,scores={life=0}] Count 1
execute positioned ~-7 ~ ~-7 if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run execute positioned ~7 ~ ~7 run scoreboard players add @e[tag=cmn,distance=..0.2,scores={life=0}] Count 1
execute positioned ~-7 ~ ~7 if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run execute positioned ~7 ~ ~-7 run scoreboard players add @e[tag=cmn,distance=..0.2,scores={life=0}] Count 1
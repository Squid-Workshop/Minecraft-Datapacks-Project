execute if entity @e[tag=on,scores={Count=12}] run tellraw @p[scores={life=99}] {"text":"you win the easy level!"}
execute if entity @e[tag=on,scores={Count=18}] run tellraw @p[scores={life=99}] {"text":"you win the normal level!"}
execute if entity @e[tag=on,scores={Count=24}] run tellraw @p[scores={life=99}] {"text":"you win the hard level!"}

####normal end
execute at @e[tag=cmn,scores={life=-1},distance=..0.2] run fill ~-2 ~ ~-2 ~2 ~ ~2 red_wool
execute at @e[tag=cmn,scores={life=-1}] run fill ~-1 ~ ~-1 ~1 ~ ~1 black_wool

execute at @e[tag=cmn,scores={life=-1}] run fill ~-3 ~ ~-3 ~2 ~ ~2 light_gray_wool replace air

###reload
scoreboard players set @e[tag=on] chosen 1
scoreboard players set @e[tag=cmn] chosen 0
scoreboard players reset @e[tag=cmn] Count
execute at @e[tag=on,scores={chosen=1}] run clone -765 4 -1162 -758 4 -1156 ~-4 ~2 ~-3 filtered minecraft:diamond_block
execute at @e[tag=on,scores={chosen=0}] run fill ~-4 ~2 ~-3 ~3 ~2 ~3 air
execute at @e[tag=cmn,scores={chosen=0}] run fill ~-3 ~2 ~-3 ~3 ~2 ~3 air
execute at @e[tag=cmn,scores={chosen=1}] run clone -764 6 -1162 -758 6 -1156 ~-3 ~2 ~-3 masked
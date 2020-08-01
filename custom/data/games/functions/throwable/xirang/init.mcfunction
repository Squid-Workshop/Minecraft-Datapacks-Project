tag @s add new_t
tag @s add throw
tag @s add xirang

scoreboard players operation @s UID = @p UID

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["xirang","tracer"],Duration:2000}

scoreboard players operation @e[tag=tracer,limit=1,sort=nearest] UID = @p UID

playsound minecraft:block.sand.step player @a ~ ~ ~ 1 1

tag @s remove new_t
tag @s add thrown
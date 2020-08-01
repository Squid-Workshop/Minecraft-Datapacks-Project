#summon minecraft:small_fireball ~ ~3 ~ {direction:[0.0,-10.0,0.0]}

effect give @s minecraft:slowness 1 1 true

scoreboard players operation @s hit_by = @e[limit=1,sort=nearest,tag= molotov_effect] UID

tag @s add onfire


#not used


tag @s add new_t
tag @s add throw

execute if score @p throwable matches 1 run tag @s add grenade

execute if score @p throwable matches 2 run tag @s add molotov

execute if score @p throwable matches 3 run tag @s add turret

execute if score @p throwable matches 3 run tag @s add template

scoreboard players operation @s UID = @p UID

tag @s remove new_t
tag @s add thrown
function games:fight_club/item/supply/arrow_explosive_mini/fire

scoreboard players set @s spread 6
scoreboard players operation @e[tag=grenade,distance=..2] spread = @s spread
execute as @e[tag=grenade,distance=..2] at @s run function games:gun/core/spread/spread

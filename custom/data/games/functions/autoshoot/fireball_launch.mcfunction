execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s x = @e[tag=autoshooting,sort=nearest,limit=1] x
execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s y = @e[tag=autoshooting,sort=nearest,limit=1] y
execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s z = @e[tag=autoshooting,sort=nearest,limit=1] z
execute at @s run execute store result entity @s power[0] double .01 run scoreboard players get @s x
execute at @s run execute store result entity @s power[1] double .01 run scoreboard players get @s y
execute at @s run execute store result entity @s power[2] double .01 run scoreboard players get @s z

execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s x = @e[tag=autoshooting,sort=nearest,limit=1] x
execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s y = @e[tag=autoshooting,sort=nearest,limit=1] y
execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s z = @e[tag=autoshooting,sort=nearest,limit=1] z
execute at @s run scoreboard players operation @s x += @s dx
execute at @s run scoreboard players operation @s y += @s dy
execute at @s run scoreboard players operation @s z += @s dz
execute at @s[type=!fireball] run execute store result entity @s Motion[0] double .0001 run scoreboard players get @s x
execute at @s[type=!fireball] run execute store result entity @s Motion[1] double .0001 run scoreboard players get @s y
execute at @s[type=!fireball] run execute store result entity @s Motion[2] double .0001 run scoreboard players get @s z

execute at @s[type=fireball] run execute store result entity @s direction[0] double .01 run scoreboard players get @s x
execute at @s[type=fireball] run execute store result entity @s direction[1] double .01 run scoreboard players get @s y
execute at @s[type=fireball] run execute store result entity @s direction[2] double .01 run scoreboard players get @s z
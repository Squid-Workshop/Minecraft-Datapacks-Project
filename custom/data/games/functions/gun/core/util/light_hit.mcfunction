tag @e[tag=cbp,tag=light,limit=1,sort=nearest] add hit
tp @e[tag=cbp,tag=light,limit=1,sort=nearest] ~ ~ ~ facing entity @s
playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 3 0.5 0.1

scoreboard players set @s dx 0
scoreboard players set @s dy 0
scoreboard players set @s dz 0
execute store result entity @s Motion[0] double .0001 run scoreboard players get @s dx
execute store result entity @s Motion[1] double .0001 run scoreboard players get @s dy
execute store result entity @s Motion[2] double .0001 run scoreboard players get @s dz

summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["thor"]}
execute store result score @e[tag=thor,distance=0,limit=1] x run data get entity @e[tag=thor,distance=0,limit=1] Pos[0] 10000
execute store result score @e[tag=thor,distance=0,limit=1] y run data get entity @e[tag=thor,distance=0,limit=1] Pos[1] 10000
execute store result score @e[tag=thor,distance=0,limit=1] z run data get entity @e[tag=thor,distance=0,limit=1] Pos[2] 10000
execute store result score @s x run data get entity @s Pos[0] 10000
execute store result score @s y run data get entity @s Pos[1] 10000
execute store result score @s z run data get entity @s Pos[2] 10000
scoreboard players operation @s x -= @e[tag=thor,distance=0,limit=1] x
scoreboard players operation @s y -= @e[tag=thor,distance=0,limit=1] y
scoreboard players operation @s z -= @e[tag=thor,distance=0,limit=1] z
kill @e[tag=thor,distance=0,limit=1]
summon fireball ~ ~ ~ {ExplosionPower:-2}
execute store result entity @e[type=fireball,distance=0,limit=1] Motion[0] double .0001 run scoreboard players get @s x
execute store result entity @e[type=fireball,distance=0,limit=1] Motion[1] double .0001 run scoreboard players get @s y
execute store result entity @e[type=fireball,distance=0,limit=1] Motion[2] double .0001 run scoreboard players get @s z
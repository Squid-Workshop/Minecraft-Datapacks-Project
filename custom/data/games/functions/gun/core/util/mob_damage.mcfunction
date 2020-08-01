#/from MGS_2.0.1 gun mod/
execute store result score v0 V run data get entity @s Health
execute if entity @s[type=minecraft:ender_dragon] run function games:gun/core/util/damage_dragon
execute if score v0 V <= @s damage run kill @s
execute if score v0 V > @s damage run scoreboard players remove @s damage 1
scoreboard players operation v0 V -= @s damage
scoreboard players set @s damage 0
execute store result entity @s Health short 1 run scoreboard players get v0 V
data merge entity @s {ActiveEffects:[{Id: 19b, Duration: 1, ShowParticles: 0b, Amplifier:100b}]}
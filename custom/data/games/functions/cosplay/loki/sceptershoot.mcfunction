summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["scepterb"]}


execute at @s run playsound minecraft:custom.scepter.shoot ambient @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:custom.scepter.shoot ambient @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:custom.scepter.shoot ambient @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:custom.scepter.shoot ambient @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:custom.scepter.shoot ambient @a ~ ~ ~ 2 1
data modify entity @e[tag=scepterb,distance=..0.1,limit=1] Rotation set from entity @s Rotation


execute if entity @s[name=YMS2001] run tag @e[tag=scepterb,limit=1,sort=nearest] add scepbyms
execute if entity @s[name=nzcsx] run tag @e[tag=scepterb,limit=1,sort=nearest] add scepbwbx
execute if entity @s[name=D_HJT] run tag @e[tag=scepterb,limit=1,sort=nearest] add scepbhjt
execute if entity @s[name=harry8698] run tag @e[tag=scepterb,limit=1,sort=nearest] add scepbgzz

execute at @s run tag @e[tag=scepterb,distance=..1.5,sort=nearest] add scepbflying
execute at @s run tp @e[distance=..0.1,tag=scepterb,limit=1,sort=nearest] ~ ~1.5 ~


execute as @e[tag=scepterb,distance=..2.25,sort=nearest] at @s run tp @s ^-0.4 ^ ^2



scoreboard players remove @s move 24
replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:1,display:{Name:"\"Scepter\""}}
#/from MGS_2.0.1 gun mod/
execute store result score v0 V run data get entity @s Age
execute if score v0 V matches ..-1 run tag @s add babe
tag @s[nbt={IsBaby:1b}] add babe


execute if entity @s[tag=babe] run function games:gun/core/init/mob_init_b
execute if entity @s[tag=!babe] run function games:gun/core/init/mob_init_a
execute if entity @s[type=#games:r/special] run function games:gun/core/init/mob_init_spr
execute if entity @s[type=#games:h/special] run function games:gun/core/init/mob_init_sph
execute if entity @s[tag=shield] run function games:gun/core/init/shield_init

tag @s[scores={r=1..,h=1..}] add ini

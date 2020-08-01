tag @s add fbmissed
execute store result score @s _var05 run data get entity @s Owner[1]
execute as @a store result score @s _var05 run data get entity @s UUID[1]
execute as @a if score @s _var05 = @e[tag=fbmissed,limit=1] _var05 run tag @s add fbplayermiss
execute as @a[tag=fbplayermiss] at @s anchored eyes run summon fireball ^ ^ ^1 {Motion:[0.0,-5.0,0.0],power:[0.0,-100.0,0.0],ExplosionPower:0}
execute as @a[tag=fbplayermiss] at @s positioned ~ ~1.02 ~ run summon armor_stand ^ ^ ^1 {Tags:["fbms"],Small:1b,Invisible:1b}
kill @e[tag=fbms]
kill @s
execute as @a if score @s UID = @e[tag=turret_effect,limit=1,sort=nearest] UID run tag @s add ally

scoreboard players add @s cooldown 0
tp @s ~ ~ ~ facing entity @p[distance=..80,tag=!ally]

execute if score @s cooldown matches 0 if entity @a[tag=!ally,distance=..30] run playsound minecraft:gun/m4a1/m4a1_silencer_01 player @a ~ ~ ~ 0.5 1

execute if score @s[type=armor_stand] cooldown matches 0 if entity @a[tag=!ally,distance=..30] run function games:throwable/turret/fire
execute if score @s[type=!armor_stand] cooldown matches 0 if entity @a[tag=!ally,distance=..30] run function games:throwable/turret/fire

#beeping sound
#execute if score @s life matches 81 run playsound minecraft:block.note_block.bit ambient @a ~ ~ ~ 1 2

execute if entity @s[scores={life=140..}] run scoreboard players set @s life 80
#green head
execute if entity @s[tag=!green,type=armor_stand] unless entity @a[tag=!ally,distance=..30] run replaceitem entity @s armor.head minecraft:stone_button{CustomModelData:10}
execute if entity @s[tag=!green,type=!armor_stand] unless entity @a[tag=!ally,distance=..30] run replaceitem entity @s armor.head minecraft:stone_button{CustomModelData:20}
execute if entity @s[tag=!green] unless entity @a[tag=!ally,distance=..30] run tag @s add green


execute if entity @a[tag=!ally,distance=..2] run function games:throwable/turret/destruct
execute positioned ~ ~0.6 ~ if entity @e[type=arrow,distance=..1] run function games:throwable/turret/destruct
execute if score @s ammo matches 0 run function games:throwable/turret/destruct
#execute if entity @e[tag=bullet,distance=..2] run function games:throwable/turret/destruct

tag @a[tag=ally] remove ally



summon armor_stand ~ ~0.5 ~ {NoBasePlate:1b,NoGravity:0b,Small:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],Pose:{Head:[180f,0f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]},Tags:["turret_effect","effect"],Invisible:0b}
#skin
replaceitem entity @e[limit=1,sort=nearest,tag=turret_effect,type=armor_stand] armor.head minecraft:stone_button{CustomModelData:10}
replaceitem entity @e[limit=1,sort=nearest,tag=turret_effect,type=armor_stand] weapon.mainhand minecraft:stone_button{CustomModelData:13}
replaceitem entity @e[limit=1,sort=nearest,tag=turret_effect,type=!armor_stand] armor.head minecraft:stone_button{CustomModelData:20}
scoreboard players set @e[limit=1,sort=nearest,tag=turret_effect] ammo 50



scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:block.anvil.land player @a ~ ~ ~ 2 1.7

execute as @e[limit=1,sort=nearest,tag=turret_effect] at @s as @a if score @s UID = @e[limit=1,sort=nearest,tag=turret_effect] UID run tp @e[limit=1,sort=nearest,tag=turret_effect] ~ ~ ~ facing entity @s
#execute as @e[limit=1,sort=nearest,tag=turret_effect] at @s run tp @e[limit=1,sort=nearest,tag=turret_effect] ~ ~ ~ facing ^ ^ ^-1


kill @s
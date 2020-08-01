execute if score @s life matches 10 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 2 0.5
execute if score @s life matches 20 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 2 0.5
execute if score @s life matches 25 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 2 1
execute if score @s life matches 30 run playsound minecraft:gun/m4a1/m4a1_clipin player @a ~ ~ ~ 2 0.5
execute if score @s life matches 35 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 2 1.5
execute if score @s life matches 40 run playsound minecraft:gun/m4a1/m4a1_clipout player @a ~ ~ ~ 2 0.5
execute if score @s life matches 45 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 2 1
execute if score @s life matches 55 run playsound minecraft:gun/m4a1/m4a1_cliphit player @a ~ ~ ~ 2 1.5
execute if score @s life matches 50 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 2 1
execute if score @s life matches 60 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 2 1.5

#model
execute if score @s life matches 10 run replaceitem entity @s[type=armor_stand] weapon.mainhand minecraft:stone_button{CustomModelData:12}
replaceitem entity @e[limit=1,sort=nearest,tag=turret_effect,type=!armor_stand] armor.head minecraft:stone_button{CustomModelData:20}
#execute if score @s life matches 10 run replaceitem entity @s[type=zombie] weapon.mainhand minecraft:stone_button{CustomModelData:22}


execute if score @s life matches 20 run data merge entity @s {Pose:{Head:[180f,0f,0f],LeftLeg:[182f,0f,0f]}}
execute if score @s life matches 30 run data merge entity @s {Pose:{Head:[160f,0f,0f],LeftLeg:[182f,0f,0f]}}
execute if score @s life matches 40 run data merge entity @s {Pose:{Head:[140f,0f,0f],LeftLeg:[182f,0f,0f]}}
execute if score @s life matches 50 run data merge entity @s {Pose:{Head:[120f,0f,0f],LeftLeg:[182f,0f,0f]}}
execute if score @s life matches 60 run data merge entity @s {Pose:{Head:[90f,0f,0f],LeftLeg:[182f,0f,0f]}}
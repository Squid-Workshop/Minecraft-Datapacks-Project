
scoreboard players set @s _var01 20000
scoreboard players set @s _var02 10000

execute store result score @s x run data get entity @s Motion[0] 10000
execute store result score @s y run data get entity @s Motion[1] 10000
execute store result score @s z run data get entity @s Motion[2] 10000

summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}
summon arrow ~ ~ ~ {Tags:["proj","split"],pickup:1b,PierceLevel:5b,damage:100.0d}

scoreboard players operation @e[tag=split,distance=0] life = @s life

scoreboard players operation @e[tag=split,distance=0] x = @s x
scoreboard players operation @e[tag=split,distance=0] y = @s y
scoreboard players operation @e[tag=split,distance=0] z = @s z

execute as @e[tag=split,distance=0] store result score @s dx run data get entity @s UUID[1]
execute as @e[tag=split,distance=0] store result score @s dy run data get entity @s UUID[2]
execute as @e[tag=split,distance=0] store result score @s dz run data get entity @s UUID[3]

scoreboard players operation @e[tag=split,distance=0] dx %= @s _var01
scoreboard players operation @e[tag=split,distance=0] dy %= @s _var01
scoreboard players operation @e[tag=split,distance=0] dz %= @s _var01

scoreboard players operation @e[tag=split,distance=0] dx -= @s _var02
scoreboard players operation @e[tag=split,distance=0] dy -= @s _var02
scoreboard players operation @e[tag=split,distance=0] dz -= @s _var02

execute as @e[tag=split,distance=0] run scoreboard players operation @s x += @s dx
execute as @e[tag=split,distance=0] run scoreboard players operation @s y += @s dy
execute as @e[tag=split,distance=0] run scoreboard players operation @s z += @s dz

execute as @e[tag=split,distance=0] run execute store result entity @s Motion[0] double .0001 run scoreboard players get @s x
execute as @e[tag=split,distance=0] run execute store result entity @s Motion[1] double .0001 run scoreboard players get @s y
execute as @e[tag=split,distance=0] run execute store result entity @s Motion[2] double .0001 run scoreboard players get @s z

tag @s add splitted

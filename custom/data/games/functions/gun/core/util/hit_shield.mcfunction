#reflect

#particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.01 1

execute if entity @s[tag=bullet] run playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1.5

#UID
scoreboard players operation @s UID = @e[tag=shield,limit=1,sort=nearest] UID


tp @s ~ ~ ~
#tag @s remove reflected_b
tag @s add reflected


#scoreboard players set v15 V 2
scoreboard players set v0 V 0


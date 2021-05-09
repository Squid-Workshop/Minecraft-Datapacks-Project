######################global features#####################
###################bed regenerate
tag @a[tag=sleep_bool,tag=!sleeping] add onbed
tellraw @a[tag=onbed] {"text":"gradually healing...","color":"green"}
effect give @a[tag=onbed] minecraft:regeneration 1000 1 true
effect give @a[tag=onbed] minecraft:health_boost 1000 0 true
spawnpoint @a[tag=ingame,tag=onbed] -1309 6 -1790
tag @a[tag=onbed] remove onbed
tag @a[tag=sleep_bool] add sleeping
tag @a[tag=sleeping,tag=!sleep_bool] add offbed
effect clear @a[tag=ingame,tag=offbed] minecraft:regeneration
tag @a[tag=offbed] remove offbed
tag @a[tag=sleeping,tag=!sleep_bool] remove sleeping
###################bed regenerate

###################guess kill
###get ammo when kill
execute as @a[tag=ingame] at @s if score @s ammokill < @s Kills run function games:fight_club/character/levelup
execute as @a[tag=ingame] at @s if score @s ammokill < @s Kills run scoreboard players add @s killstreak 1
###guess kill
execute if entity @a[scores={extradeath=1..}] as @a if score @s ammokill < @s Kills run scoreboard players set @a extradeath 0
tag @a[tag=ingame,scores={extradeath=1..}] add suicide
execute as @a[tag=suicide] at @s as @p[tag=ingame,tag=!suicide] run say I'll take this kill.
execute as @a[tag=suicide] at @s as @p[tag=ingame,tag=!suicide] run scoreboard players add @s Kills 1
tag @a[tag=suicide] remove suicide

###reset
execute as @a[tag=ingame,scores={extradeath=1..}] run scoreboard players set @s extradeath 0
execute as @a at @s run scoreboard players operation @s ammokill = @s Kills
###################guess kill

#killstreak count
execute as @a[tag=ingame,scores={deathdrop=1..}] at @s run scoreboard players set @s killstreak 0

#go through glass
execute as @a[tag=ingame,tag=shift_bool] at @s positioned ~ ~1.6 ~ if block ^ ^ ^0.4 #games:glassy run tp @s ^ ^ ^1.4

#deathdrop
#execute as @a[tag=ingame,nbt={DeathTime:1s}] at @s run summon minecraft:item ~ ~1 ~ {PickupDelay:-1s,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"2b275fe0-5da9-4d75-b180-bf84cb8f117a",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGQ1ZTljNDY5ZDUzY2ZiYjE2ZjlmNmVmY2FhYzY5ZmI3YWZjYjdiODcxMzU5MzdhODIwOThkMzRhZDEwNjliYSJ9fX0="}]}}},Count:1},Tags:["bonus"]}
execute as @a[tag=ingame,scores={deathdrop=1..}] at @s run summon minecraft:item ~ ~1 ~ {Invulnerable:1b,PickupDelay:-1s,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"2b275fe0-5da9-4d75-b180-bf84cb8f117a",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGQ1ZTljNDY5ZDUzY2ZiYjE2ZjlmNmVmY2FhYzY5ZmI3YWZjYjdiODcxMzU5MzdhODIwOThkMzRhZDEwNjliYSJ9fX0="}]}}},Count:1},Tags:["loots"]}
#deathdrop reset
execute as @a[scores={deathdrop=1..}] at @s run scoreboard players set @s deathdrop 0
#deathdrop effect
execute as @e[tag=supply] at @s run particle minecraft:portal ~ ~ ~ 0.2 0.2 0.2 0.00001 1

#clear glow sneak
execute as @a[tag=shift_bool] run effect clear @s minecraft:glowing 

#land sound
execute as @a[tag=offGrnd_end,tag=ingame] at @s run playsound minecraft:block.stone.fall player @a ~ ~ ~ 1.5 0.5


############################climb
#@a[nbt=!{SelectedItem:{}},tag=shift_bool]
execute as @a[tag=shift_bool,tag=ingame] at @s positioned ~ ~1.6 ~ unless block ^ ^ ^0.4 air run scoreboard players add @s climb 2

execute as @a[tag=shift_bool,scores={climb=1..},tag=ingame] at @s run effect give @s minecraft:levitation 1 1 true
#fast climb for special char
execute as @a[tag=shift_bool,scores={climb=1..,role=3},tag=ingame] at @s run effect give @s minecraft:levitation 1 4 true
execute as @a[tag=shift_bool,scores={climb=1..,role=7},tag=ingame] at @s run effect give @s minecraft:levitation 1 3 true
execute as @a[tag=shift_bool,scores={climb=1..,role=11},tag=ingame] at @s run effect give @s minecraft:levitation 1 3 true
execute as @a[tag=shift_bool,scores={climb=1..,role=12},tag=ingame] at @s run effect give @s minecraft:levitation 1 4 true
#clear climb
execute as @a[tag=!shift_bool,scores={climb=..8,role=3},tag=ingame] at @s run effect clear @s minecraft:levitation
execute as @a[tag=!shift_bool,scores={climb=..8,role=7},tag=ingame] at @s run effect clear @s minecraft:levitation
execute as @a[tag=!shift_bool,scores={climb=..8,role=11},tag=ingame] at @s run effect clear @s minecraft:levitation
execute as @a[tag=!shift_bool,scores={climb=..8,role=12},tag=ingame] at @s run effect clear @s minecraft:levitation
execute as @a[tag=!shift_bool,scores={climb=..5},tag=ingame] at @s run effect clear @s minecraft:levitation
#limit climb
execute as @a[scores={climb=10..}] run scoreboard players set @s climb 10

#clear climb
execute as @a[tag=!shift_bool,scores={climb=1..},tag=ingame] at @s run scoreboard players remove @s climb 1
###############################climb
######################global features#####################

#protect
tag @a[tag=ingame,tag=protected] remove protected
tag @a[tag=ingame,tag=invulnerable] remove invulnerable


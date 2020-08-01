
######################features#####################

#crystal regenerate
execute as @e[type=minecraft:end_crystal,tag=radiation] at @s run tag @a[tag=ingame,distance=..5] add radiation
effect give @a[tag=radiation] minecraft:regeneration 3 1 true
effect give @a[tag=radiation] minecraft:strength 5 1 true
tag @a[tag=radiation] remove radiation
#chest monster
execute as @a[tag=container_bool,tag=ingame] run tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" was eaton by a chest monster","color":"white"}]
execute as @a[tag=container_bool,tag=ingame] at @s run playsound minecraft:entity.generic.eat ambient @a ~ ~ ~ 2 0.8 0.2
gamerule showDeathMessages false
kill @a[tag=container_bool,tag=ingame]
gamerule showDeathMessages true
######################features#####################

#score add timer
scoreboard players add catchman life 1

#point count
scoreboard players set club juekill 0
execute as @a[team=JueGe,tag=ingame] run scoreboard players operation club juekill += @s Points

scoreboard players set club wangkill 0
execute as @a[team=WangTiao,tag=ingame] run scoreboard players operation club wangkill += @s Points


#bossbar
execute store result bossbar minecraft:jue value run scoreboard players get catchman life
execute store result bossbar minecraft:wang value run scoreboard players get catchman life

bossbar set minecraft:jue players @a[team=JueGe,tag=ingame]
bossbar set minecraft:wang players @a[team=WangTiao,tag=ingame]

#end turn
execute if score club juekill >= dm_win C run tag @a[team=JueGe,tag=ingame] add winner
execute if score club wangkill >= dm_win C run tag @a[team=WangTiao,tag=ingame] add winner

execute if entity @a[tag=winner] run function games:fight_club/club/catchman/win
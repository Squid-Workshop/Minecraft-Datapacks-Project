gamerule naturalRegeneration true
gamerule doDaylightCycle false

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

scoreboard players set club state 0
#clear scores
function games:fight_club/club/reset
#clear scores
scoreboard objectives remove deaths
scoreboard objectives remove Kills
scoreboard objectives remove Points
scoreboard objectives remove juekill
scoreboard objectives remove chenkill
scoreboard objectives remove wangkill
scoreboard objectives remove jiankill
scoreboard objectives remove ammokill
scoreboard objectives remove extradeath
#sign
data merge block -1299 22 -1771 {Text1:"",Text2:'{"text":"FIGHT CLUB","color":"dark_red"}',Text3:'["",{"text":"ON/","color":"white"},{"text":"OFF","color":"red"}]'}
#empty teams
team empty JueGe 
team empty WangTiao
team empty ChenLi
team empty JianMao

#sound stop
stopsound @a ambient

#setblock -1311 23 -1796 minecraft:red_concrete


spawnpoint @a[tag=ingame] -1265 33 -1704
effect clear @a[tag=ingame]


scoreboard players set @a role 0
#team score
scoreboard players set @a team 0

#lights off
fill -1304 25 -1784 -1293 25 -1768 minecraft:black_terracotta replace minecraft:sea_lantern
fill -1292 21 -1781 -1292 21 -1774 minecraft:brown_terracotta

fill -1293 20 -1784 -1304 20 -1768 minecraft:snow_block replace minecraft:white_shulker_box
setblock -1299 20 -1771 minecraft:white_shulker_box[facing=down]
setblock -1298 20 -1771 minecraft:white_shulker_box[facing=down]


######close mode
execute if score club pvpmode matches 1 run function games:fight_club/club/deathmatch/off
execute if score club pvpmode matches 2 run function games:fight_club/club/catchman/off


#schedule 
schedule clear games:fight_club/character/run_delayed

#remove tag
tag @a[tag=ingame] remove ingame

#close tell
tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"HJT'S Fight Club closed.","color":"white"}]

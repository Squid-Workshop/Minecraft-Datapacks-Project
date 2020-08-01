#modes clear
function games:fight_club/club/mode_off

scoreboard players set club pvpmode 1

#roles select board
clone -1286 20 -1791 -1277 24 -1789 -1303 20 -1786


#message
tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"The Deathmatch Mode is on.","color":"white"}]
#instruction
tellraw @a ["",{"text":"[","color":"white"},{"text":"->","color":"white"},{"text":"]","color":"white"},{"text":"Be the first team with ","color":"white"},{"score":{"name":"dm_win","objective":"C"},"color":"white"},{"text":" kills!","color":"white"}]

#light
setblock -1305 20 -1778 minecraft:redstone_block

#reset
function games:fight_club/club/reset

#list
scoreboard objectives setdisplay list deaths
scoreboard objectives setdisplay sidebar Kills

########scene select
#2
fill -1293 21 -1781 -1293 21 -1774 minecraft:dark_oak_button[facing=west]

#RAND
scoreboard players set scene C 8
#rand scene
scoreboard players add rand accu 2
scoreboard players operation rand V = rand accu
scoreboard players operation rand V %= scene C
execute if score rand V matches 1 run function games:fight_club/scene/scene1
execute if score rand V matches 2 run function games:fight_club/scene/scene2
execute if score rand V matches 3 run function games:fight_club/scene/scene3
execute if score rand V matches 4 run function games:fight_club/scene/scene4
execute if score rand V matches 5 run function games:fight_club/scene/scene5
execute if score rand V matches 6 run function games:fight_club/scene/scene6
execute if score rand V matches 7 run function games:fight_club/scene/scene7
execute if score rand V matches 8 run function games:fight_club/scene/scene8

function games:fight_club/club/deathmatch/bossbar





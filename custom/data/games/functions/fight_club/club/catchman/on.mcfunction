#modes clear
function games:fight_club/club/mode_off

scoreboard players set club pvpmode 2

#role select board
clone -1286 20 -1785 -1277 24 -1783 -1303 20 -1786

#message
tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"The Catchman Mode is on.","color":"white"}]
#instruction
tellraw @a ["",{"text":"[","color":"white"},{"text":"->","color":"white"},{"text":"]","color":"white"},{"text":"Just run","color":"white"}]

#light
setblock -1305 20 -1779 minecraft:redstone_block

#reset
function games:fight_club/club/reset


#list
scoreboard objectives setdisplay list deaths
scoreboard objectives setdisplay sidebar Points

########scene select
#kjl only 2
setblock -1293 21 -1780 minecraft:dark_oak_button[facing=west]
function games:fight_club/scene/scene2

function games:fight_club/club/deathmatch/bossbar





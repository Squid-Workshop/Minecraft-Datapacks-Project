
#clear light
fill -1292 20 -1781 -1292 20 -1774 air

#set light
setblock -1292 20 -1780 minecraft:redstone_block

#score
scoreboard players set club scene 2

tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"The game will start in "},{"text":"科技楼","underlined":true}]
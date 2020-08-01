execute unless score club pvpmode matches 1 run scoreboard players set club pvpmode 0
######close
#setblock -1311 22 -1794 minecraft:red_concrete

#fill -1307 22 -1795 -1294 22 -1786 minecraft:gold_block replace minecraft:redstone_wire

#lights off
setblock -1305 20 -1778 air

#bottons off
fill -1293 21 -1781 -1293 21 -1774 air

function games:fight_club/club/reset

tellraw @s ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"The Deathmatch Mode is off.","color":"white"}]
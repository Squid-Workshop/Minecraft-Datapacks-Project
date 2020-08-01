#protect waiting room
tag @s add protected

gamemode adventure @s[gamemode=!spectator]

#tp player without team back
execute if entity @s[scores={team=0}] unless score club pvpmode matches 2 run tag @s add noteam
tellraw @s[tag=noteam] ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"Please choose your team!","color":"white"}]
clear @s[tag=noteam]
effect clear @s[tag=noteam]
tp @s[tag=noteam] -1295.00 21.68 -1769.42 facing -1293 22 -1770

#tp player without mode back
execute if score club pvpmode matches 0 run tag @s add nomode
tellraw @s[tag=nomode] ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"Please choose a pvp mode!","color":"white"}]
clear @s[tag=nomode]
effect clear @s[tag=nomode]
tp @s[tag=nomode] -1302.0 21.82 -1778.97 facing -1304.00 22.49 -1778.98

execute as @s[tag=goback] run function games:fight_club/club/entrance
execute as @a[tag=goback] run scoreboard players set @s role 0
tp @s[tag=goback] -1298 21 -1775 facing -1298.5 22 -1785


tag @s[tag=noteam] remove noteam
tag @s[tag=nomode] remove nomode
tag @s[tag=goback] remove goback

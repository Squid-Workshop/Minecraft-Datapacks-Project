#scores
#scoreboard players set @s ammo 0
scoreboard players set @s b_rifle 30
scoreboard players set @s b_mini 500
scoreboard players set @s b_smg 50
scoreboard players set @s b_shot 2
scoreboard players set @s b_sniper 5
scoreboard players set @s b_energy 25
#join game
execute unless entity @s[tag=ingame] run tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"selector":"@s"},{"text":" joined the game","color":"white"}]

tag @s add ingame
gamemode adventure @s[gamemode=!spectator]

#############tips for all
tellraw @s ["",{"text":"[","color":"white"},{"text":"Tips","color":"dark_green"},{"text":"]","color":"white"}]
tellraw @s ["",{"text":"[","color":"white"},{"text":"1","color":"white"},{"text":"]","color":"white"},{"text":" press ","color":"white"},{"keybind":"key.sneak","underlined":true,"color":"light_purple"},{"text":" to ","color":"white"},{"text":"climb any wall","bold":true,"color":"light_purple"}]
tellraw @s ["",{"text":"[","color":"white"},{"text":"2","color":"white"},{"text":"]","color":"white"},{"text":" press ","color":"white"},{"keybind":"key.sneak","underlined":true,"color":"light_purple"},{"text":"to ","color":"white"},{"text":"pass through windows","bold":true,"color":"light_purple"}]
tellraw @s ["",{"text":"[","color":"white"},{"text":"3","color":"white"},{"text":"]","color":"white"},{"text":" press ","color":"white"},{"keybind":"key.sneak","underlined":true,"color":"light_purple"},{"text":"to ","color":"white"},{"text":"evade the self-glowing effect per 20s","bold":true,"color":"light_purple"}]
############tips for pvp mode
execute if score club pvpmode matches 1 run function games:fight_club/club/deathmatch/launch


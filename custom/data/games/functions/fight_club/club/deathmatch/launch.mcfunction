bossbar set minecraft:jue players @s[team=JueGe]
bossbar set minecraft:chen players @s[team=ChenLi]
bossbar set minecraft:wang players @s[team=WangTiao]
bossbar set minecraft:jian players @s[team=JianMao]

#instruction
tellraw @s ["",{"text":"[","color":"white"},{"text":"4","color":"white"},{"text":"]","color":"white"},{"text":" press ","color":"white"},{"keybind":"key.playerlist","underlined":true,"color":"light_purple"},{"text":"to see the ","color":"white"},{"text":"death count","bold":true,"color":"light_purple"}]


tellraw @s ["",{"text":"[","color":"white"},{"text":"deathmatch","color":"red"},{"text":"] ","color":"white"},{"text":"Be the first team with ","color":"white"},{"score":{"name":"dm_win","objective":"C"},"color":"white"},{"text":" kills!","color":"white"}]
#title @s subtitle {"text":"score 20 kills to win"}
title @s[tag=ingame] times 20 60 20
title @s[tag=ingame] title {"text":" \u0020 \u0020 Deathmatch Start! \u0020 \u0020 ","color":"red"}

function games:fight_club/club/deathmatch/bossbar
function games:fight_club/club/deathmatch/spawn

#list
scoreboard objectives setdisplay list deaths
scoreboard objectives setdisplay sidebar Kills

#schedule
schedule function games:fight_club/club/deathmatch/glow 20s
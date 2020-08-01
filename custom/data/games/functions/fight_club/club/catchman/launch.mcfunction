#reset team
function games:fight_club/team/empty
#team
execute as @r[tag=ingame] run team join WangTiao
execute as @a[tag=ingame,team=!WangTiao] run team join JueGe

#no role or items
scoreboard players set @a role 0
clear @a[tag=ingame]

#role init
execute as @a[team=JueGe] run function games:fight_club/character/runner/init
execute as @a[team=WangTiao] run function games:fight_club/character/catcher/init

#bossbar
bossbar set minecraft:jue players @a[team=JueGe]
bossbar set minecraft:wang players @a[team=WangTiao]

#instruction
tellraw @a[team=JueGe] ["",{"text":"[","color":"white"},{"text":"Catchman","color":"red"},{"text":"] ","color":"white"},{"text":"Don't be catched by ","color":"white"},{"text":"Wang Tiao ","color":"aqua"},{"text":"! Survive 3 min to win.","color":"white"}]
tellraw @a[team=WangTiao] ["",{"text":"[","color":"white"},{"text":"Catchman","color":"red"},{"text":"] ","color":"white"},{"text":"Catch all ","color":"white"},{"text":"Bottle Cap Kickers ","color":"light_purple"},{"text":"to win.","color":"white"}]

#title @s subtitle {"text":"score 20 kills to win"}
title @a[tag=ingame] times 20 60 20
title @a[tag=ingame] subtitle ["",{"text":"WangTiao","color":"aqua"},{"text":"Stop kicking bottle caps!","color":"white"}]
title @a[tag=ingame] title {"text":" \u0020 \u0020 Catchman \u0020 \u0020 ","color":"red"}

function games:fight_club/club/catchman/bossbar
function games:fight_club/club/catchman/spawn

#init effect
execute as @a[team=WangTiao] run function games:fight_club/club/catchman/timer/effect

#list
scoreboard objectives setdisplay list deaths
scoreboard objectives setdisplay sidebar Points

#schedule wulolo
schedule function games:fight_club/club/catchman/provocate 20s

#timer
schedule function games:fight_club/club/catchman/timer/10 2s
title @a times 0 20 20
title @a[team=WangTiao] subtitle ["",{"text":"You are "},{"text":"WangTiao","color":"aqua"}]
title @a[team=JueGe] subtitle ["",{"text":"You are "},{"text":"Bottle Cap Kicker","color":"light_purple"}]
title @a[tag=ingame] title  {"text":"6","color":"dark_red"}

execute as @a[tag=ingame] at @s run playsound minecraft:block.note_block.guitar ambient @s ~ ~ ~ 1 1

#effect
execute as @a[team=WangTiao] run function games:fight_club/club/catchman/timer/effect

schedule function games:fight_club/club/catchman/timer/5 1s
execute as @a[tag=ingame] run function games:fight_club/club/entrance
tp @a[tag=ingame] -1298 21 -1775 facing -1298.5 22 -1785
tellraw @a[tag=ingame] ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"The game is terminated.","color":"white"}]

function games:fight_club/club/reset




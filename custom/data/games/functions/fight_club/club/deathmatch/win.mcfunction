#[final exam score]
tellraw @a ["",{"text":"[","color":"white"},{"text":"Final ","color":"white"},{"text":"Exam","strikethrough":true,"color":"white"},{"text":" Score","color":"white"},{"text":"]","color":"white"}]
execute if entity @e[team=JueGe] run tellraw @a ["",{"text":"JueGe: ","color":"light_purple"},{"score":{"name":"club","objective":"juekill"},"underlined":true,"color":"white"}]
execute if entity @e[team=ChenLi] run tellraw @a ["",{"text":"ChenLi: ","color":"yellow"},{"score":{"name":"club","objective":"chenkill"},"underlined":true,"color":"white"}]
execute if entity @e[team=WangTiao] run tellraw @a ["",{"text":"WangTiao: ","color":"aqua"},{"score":{"name":"club","objective":"wangkill"},"underlined":true,"color":"white"}]
execute if entity @e[team=JianMao] run tellraw @a ["",{"text":"JianMao: ","color":"gold"},{"score":{"name":"club","objective":"jiankill"},"underlined":true,"color":"white"}]
#winner
tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"->","color":"dark_red"},{"selector":"@a[tag=winner]","underlined":true,"color":"gold"},{"text":"<-","color":"dark_red"},{"text":"wins the deathmatch!","color":"white"}]

execute if entity @a[team=ChenLi,tag=winner] run tellraw @a ["",{"text":"[","color":"white"},{"text":"ChenLi","color":"yellow"},{"text":"]","color":"white"},{"selector":"@a[team=ChenLi,tag=winner]"},{"text":",调皮鬼","color":"white"}]
execute if entity @a[team=JueGe,tag=winner] run tellraw @a ["",{"text":"[","color":"white"},{"text":"JueGe","color":"light_purple"},{"text":"]","color":"white"},{"selector":"@a[team=JueGe,tag=winner]"},{"text":",我的目的达到了!","color":"white"}]
execute if entity @a[team=WangTiao,tag=winner] run tellraw @a ["",{"text":"[","color":"white"},{"text":"WangTiao","color":"aqua"},{"text":"]","color":"white"},{"text":"嘶啊,","color":"white"},{"selector":"@a[team=WangTiao,tag=winner]"},{"text":",这几位同学都很不错啊","color":"white"}]
execute if entity @a[team=JianMao,tag=winner] run tellraw @a ["",{"text":"[","color":"white"},{"text":"JianMao","color":"gold"},{"text":"]我很欣慰有","color":"white"},{"selector":"@a[team=JianMao,tag=winner]"},{"text":",啧样地学森","color":"white"}]

title @a[tag=!winner,tag=ingame] title {"text":"GAME OVER","color":"dark_red"}
execute as @a[tag=!winner,tag=ingame] at @s run playsound minecraft:entity.evoker.prepare_wololo ambient @s -1298 21 -1775 1 1

function games:fight_club/club/terminate
execute as @a[tag=winner] at @s run function games:fight_club/club/win




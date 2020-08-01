


execute at @s[scores={non_op=5001}] run scoreboard players set @e[tag=msc] music 1
execute at @s[scores={non_op=5001}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose 中华人民共和国国歌","color":"gray"}]


execute at @s[scores={non_op=5002}] run scoreboard players set @e[tag=msc] music 2
execute at @s[scores={non_op=5002}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose 歌唱祖国","color":"gray"}]


execute at @s[scores={non_op=5003}] run scoreboard players set @e[tag=msc] music 3
execute at @s[scores={non_op=5003}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose 我和我的祖国","color":"gray"}]


execute at @s[scores={non_op=5004}] run scoreboard players set @e[tag=msc] music 4
execute at @s[scores={non_op=5004}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose 通天大道宽又阔","color":"gray"}]


execute at @s[scores={non_op=5005}] run scoreboard players set @e[tag=msc] music 5
execute at @s[scores={non_op=5005}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose CCTV13天气预报","color":"gray"}]


execute at @s[scores={non_op=5006}] run scoreboard players set @e[tag=msc] music 6
execute at @s[scores={non_op=5006}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose 冬日晨曦","color":"gray"}]


execute at @s[scores={non_op=5007}] run scoreboard players set @e[tag=msc] music 7
execute at @s[scores={non_op=5007}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose 只因你太美","color":"gray"}]


execute at @s[scores={non_op=5008}] run scoreboard players set @e[tag=msc] music 8
execute at @s[scores={non_op=5008}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Butterfly Waltz","color":"gray"}]


execute at @s[scores={non_op=5009}] run scoreboard players set @e[tag=msc] music 9
execute at @s[scores={non_op=5009}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Castle in the Sky","color":"gray"}]


execute at @s[scores={non_op=5010}] run scoreboard players set @e[tag=msc] music 10
execute at @s[scores={non_op=5010}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose For River","color":"gray"}]


execute at @s[scores={non_op=5011}] run scoreboard players set @e[tag=msc] music 11
execute at @s[scores={non_op=5011}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Gymnopedie","color":"gray"}]


execute at @s[scores={non_op=5012}] run scoreboard players set @e[tag=msc] music 12
execute at @s[scores={non_op=5012}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Imperial March","color":"gray"}]


execute at @s[scores={non_op=5013}] run scoreboard players set @e[tag=msc] music 13
execute at @s[scores={non_op=5013}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Lovestheme","color":"gray"}]


execute at @s[scores={non_op=5014}] run scoreboard players set @e[tag=msc] music 14
execute at @s[scores={non_op=5014}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Turkish March","color":"gray"}]


execute at @s[scores={non_op=5015}] run scoreboard players set @e[tag=msc] music 15
execute at @s[scores={non_op=5015}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Micmacs a la Gare","color":"gray"}]


execute at @s[scores={non_op=5016}] run scoreboard players set @e[tag=msc] music 16
execute at @s[scores={non_op=5016}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose My Heart Will Go On","color":"gray"}]


execute at @s[scores={non_op=5017}] run scoreboard players set @e[tag=msc] music 17
execute at @s[scores={non_op=5017}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Old Money","color":"gray"}]


execute at @s[scores={non_op=5018}] run scoreboard players set @e[tag=msc] music 18
execute at @s[scores={non_op=5018}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose River Flows in You","color":"gray"}]


execute at @s[scores={non_op=5019}] run scoreboard players set @e[tag=msc] music 19
execute at @s[scores={non_op=5019}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Sk8ter Boi","color":"gray"}]


execute at @s[scores={non_op=5020}] run scoreboard players set @e[tag=msc] music 20
execute at @s[scores={non_op=5020}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Summer","color":"gray"}]


execute at @s[scores={non_op=5021}] run scoreboard players set @e[tag=msc] music 21
execute at @s[scores={non_op=5021}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Take Me Higher","color":"gray"}]


execute at @s[scores={non_op=5022}] run scoreboard players set @e[tag=msc] music 22
execute at @s[scores={non_op=5022}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose The Magnificent Seven","color":"gray"}]


execute at @s[scores={non_op=5023}] run scoreboard players set @e[tag=msc] music 23
execute at @s[scores={non_op=5023}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Vaggvisa","color":"gray"}]


execute at @s[scores={non_op=5024}] run scoreboard players set @e[tag=msc] music 24
execute at @s[scores={non_op=5024}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":" chose Happy Birthday","color":"gray"}]





#initialize
execute as @e[tag=msc] run scoreboard players set @s life 0
execute as @e[tag=msc] run tag @a add mscpause
execute as @e[tag=msc] run tag @s add mscpause
execute as @e[tag=msc] run tag @s remove mscend
execute as @e[tag=msc] run tag @s remove mscplay
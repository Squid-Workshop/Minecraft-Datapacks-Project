execute if entity @s[scores={music=1}] run tag @s add mscjump
scoreboard players remove @s[scores={music=2..}] music 1
scoreboard players set @s[tag=mscjump] music 24
scoreboard players set @s life 0
tag @s remove mscpause
tag @a remove mscpause
tag @s remove mscend
tag @s remove mscjump
tag @s add mscplay
execute if entity @s[scores={music=24}] run tag @s add mscjump
scoreboard players add @s[scores={music=..23}] music 1
scoreboard players set @s[tag=mscjump] music 1
scoreboard players set @s life 0
tag @s remove mscpause
tag @a remove mscpause
tag @s remove mscend
tag @s remove mscjump
tag @s add mscplay
scoreboard players add @s[tag=mscend] music 1
scoreboard players set @s[tag=mscend] life 0
scoreboard players reset @a[scores={non_op=5999}] non_op
tag @s remove mscend
tag @s remove mscpause
tag @a remove mscpause
tag @s add mscplay
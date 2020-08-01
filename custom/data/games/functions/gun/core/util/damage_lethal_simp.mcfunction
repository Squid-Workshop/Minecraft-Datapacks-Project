#/from MGS_2.0.1 gun mod/
kill @s
tag @s add dead

scoreboard players operation v0 V = @s hit_by
execute as @a if score @s UID = v0 V run scoreboard players add @s Kills 1
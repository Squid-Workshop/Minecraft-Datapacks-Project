#/from MGS_2.0.1 gun mod/
scoreboard players add @s b_rifle 0
scoreboard players add @s b_smg 0

scoreboard players add @s cooldown 0
scoreboard players operation @s UID = _uid_ptr UID
scoreboard players add _uid_ptr UID 1
scoreboard players operation @s SID = SID C
scoreboard players set @s r 300
scoreboard players set @s h 1950
tag @s[tag=!ini] add logged
tag @s[tag=!ini] add ini
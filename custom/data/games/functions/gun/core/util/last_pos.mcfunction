#/from MGS_2.0.1 gun mod/

summon area_effect_cloud ~ 0 ~ {Tags:["lp"],Duration:3,PersistenceRequired:1b}
tp @e[tag=lp,tag=!ini] @s[tag=!dead]
scoreboard players operation @e[tag=lp,tag=!ini] UID = @s UID
tag @e[tag=lp,tag=!ini] add ini
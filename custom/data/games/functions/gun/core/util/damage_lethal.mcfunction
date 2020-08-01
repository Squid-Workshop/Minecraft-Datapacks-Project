#/from MGS_2.0.1 gun mod/
gamerule showDeathMessages false
kill @s
tag @s add dead
gamerule showDeathMessages true

scoreboard players operation v0 V = @s hit_by
execute as @a if score @s UID = v0 V run tag @s add killer

# unknown killer
execute if score @s hit_by matches 0 run tag @p[tag=!dead] add killer

execute if score @s hit_by matches 0 as @p[tag=killer] run say I guess that is my kill.

# add custom death messages here:
#execute if entity @p[tag=killer,scores={weapon=45..46}] run tellraw @a ["",{"selector":"@p[tag=killer]"},{"text":" oofed "},{"selector":"@s"}]

# be sure to exclude that weapon from the general death message here:

execute if entity @s[tag=!onfire,tag=!grenaded,tag=!turreted] if entity @p[tag=killer] unless score @s hit_by matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" was killed under "},{"selector":"@p[tag=killer]"},{"text":"'s gunfire."}]

execute if entity @s[tag=!onfire,tag=grenaded,tag=!turreted] if entity @p[tag=killer] unless score @s hit_by matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" was blown up by "},{"selector":"@p[tag=killer]"},{"text":"'s grenade."}]

execute if entity @s[tag=onfire,tag=!grenaded,tag=!turreted] if entity @p[tag=killer] unless score @s hit_by matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" was burnt to death by "},{"selector":"@p[tag=killer]"},{"text":"'s molotov."}]

execute if entity @s[tag=!onfire,tag=!grenaded,tag=turreted] if entity @p[tag=killer] unless score @s hit_by matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" was shot by "},{"selector":"@p[tag=killer]"},{"text":"'s turret."}]

execute if entity @p[tag=killer] if score @s hit_by matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" was killed by someone's bullets"}]



scoreboard players add @p[tag=killer] Kills 1
#suicide
execute if score @s UID = @p[tag=killer] UID run tag @s add suicide
scoreboard players remove @s[tag=suicide] Kills 2
execute if entity @s[tag=suicide] run tellraw @a ["",{"text":"That was a suicide"}]
#team kill
execute if score @s[tag=!suicide] team = @p[tag=killer] team run scoreboard players remove @p[tag=killer] Kills 2
execute if score @s[tag=!suicide] team = @p[tag=killer] team run tellraw @a ["",{"selector":"@p[tag=killer]"},{"text":" just killed his teammate"}]

tag @p[tag=killer] remove killer
tag @s[tag=suicide] remove suicide
#tag @p[tag=onfire] remove onfire
#tag @p[tag=grenaded] remove grenaded
#tag @p[tag=turreted] remove turreted
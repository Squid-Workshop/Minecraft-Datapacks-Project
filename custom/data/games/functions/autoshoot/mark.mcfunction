execute as @e[tag=fbhit] at @s run summon area_effect_cloud ^ ^ ^ {Tags:["rttgt","nomark","notp"],Duration:0,Owner:[I;1,-1,-2,-3]}
execute at @e[tag=fbhit] run data modify entity @e[distance=..0.1,tag=nomark,limit=1] Owner set from entity @s UUID
execute at @e[tag=fbhit] run tag @e[distance=..0.1,tag=nomark,limit=1] remove nomark
execute at @e[tag=fbhit] as @e[distance=..0.1,limit=1,tag=notp] run function games:autoshoot/mark_tp

#execute as @e[tag=fbhit] at @s anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["rttgt","nomark"],Duration:0,Owner:[I;1,-1,-2,-3]}


#execute as @e[tag=fbhit] at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {NoGravity:1b}
#execute as @e[tag=fbhit] at @s anchored eyes positioned ^ ^ ^ run data modify entity @e[distance=..0.1,tag=nomark,limit=1] Owner set from entity @s UUID
#execute as @e[tag=fbhit] at @s anchored eyes positioned ^ ^ ^ run tag @e[distance=..0.1,tag=nomark,limit=1] remove nomark
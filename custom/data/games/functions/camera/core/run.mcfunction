

#################detect fire#################
#execute as @e[tag=screen] at @s run function games:camera/core/fire
#cooldown
#execute as @e[tag=camera] at @s run function games:camera/core/detector
#execute if score screen cooldown matches 0 as @e[tag=camera] at @s run function games:camera/core/detector
execute if score screen cooldown matches 0 as @e[tag=detector] at @s run function games:camera/core/fire
#execute if score screen cooldown matches 0 run tp @e[tag=illusion] ~ ~-1000 ~
execute if score screen cooldown matches 0 if entity @e[tag=screen] run scoreboard players add screen cooldown 10
#################detect fire#################

#cooldown
execute if score screen cooldown >= 1 C run scoreboard players remove screen cooldown 1

#bullet /from MGS_2.0.1 gun mod/
execute as @e[tag=detect,tag=fired_d] at @s run function games:camera/core/physics

execute as @e[tag=detect,tag=fired_d] at @s run scoreboard players add @s life 1

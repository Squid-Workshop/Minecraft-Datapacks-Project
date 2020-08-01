########################BULLET#######################
#1 auto bullet: b_auto
#2 silenced bullet: b_auto_silenced
#3 shotgun bullet: b_shot
#4 rocket
#5 builder
#6 plasma
#####################################################

#################### track

#execute as @e[tag=rocket] at @s unless score @p[distance=2..] playerID = @s playerID

#1
execute as @e[tag=b_auto] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.01 1

#2
execute as @e[tag=b_auto_silenced] at @s run particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0.001 1

#3
execute as @e[tag=b_shot] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.01 1

#4
execute as @e[tag=rocket] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 2

#5
execute at @e[tag=builder] run particle minecraft:portal ~ ~ ~ 0 0 0 0.01 3

#6
execute at @e[tag=plasma] run particle minecraft:portal ~ ~-1 ~ 0.05 0.05 0.05 0.01 5
#################### bullet move

# bullet type 2
execute at @e[tag=b_auto] run tp @e[tag=b_auto,limit=1,sort=nearest] ^ ^ ^-2

execute at @e[tag=b_auto_silenced] run tp @e[tag=b_auto_silenced,limit=1,sort=nearest] ^ ^ ^-2

execute at @e[tag=b_shot] run tp @e[tag=b_shot,limit=1,sort=nearest] ^ ^ ^-2

# rocket type
execute at @e[tag=rocket] run tp @e[tag=rocket,limit=1,sort=nearest] ^ ^ ^-1.2

# builder type
execute at @e[tag=builder] run tp @e[tag=builder,limit=1,sort=nearest] ^ ^ ^-1.2

# plasma type
execute at @e[tag=plasma] run tp @e[tag=plasma,limit=1,sort=nearest] ^ ^ ^-2

#################### bullet sound

# rocket type
execute at @e[tag=rocket] run playsound minecraft:entity.ender_dragon.ambient ambient @a ~ ~ ~ 1 1

#################### bullet count range

# bullet type
scoreboard players add @e[type= minecraft:area_effect_cloud,tag=bullet] bulletrange 1



# rocket type
scoreboard players add @e[type= minecraft:area_effect_cloud,tag=rocket] bulletrange 1

#################### kill bullet out of range

# bullet type
execute if score @e[limit=1,sort=furthest,tag=bullet] bulletrange matches 60.. run kill @e[limit=1,tag=bullet,sort=furthest]

# shotgun
execute if score @e[limit=1,sort=furthest,tag=b_shot] bulletrange matches 20.. run kill @e[limit=1,tag=bullet,sort=furthest]

#rocket
execute if score @e[limit=1,sort=furthest,tag=rocket] bulletrange matches 100.. run kill @e[limit=1,tag=bullet,sort=furthest]


#builder
execute if score @e[limit=1,sort=furthest,tag=builder] bulletrange matches 10.. run kill @e[limit=1,tag=bullet,sort=furthest]

####################
####################




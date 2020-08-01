######################################ball#######################################


###################fall#####################
# power fall
#execute as @e[tag=soccer,scores={superpower=10}] at @s run scoreboard players set @s fall -5

# fall status
execute as @e[tag=soccer] at @s if block ~ ~-0.99 ~ minecraft:air run scoreboard players add @s fall 1

execute as @e[tag=soccer] at @s if block ~ ~-0.01 ~ minecraft:air run scoreboard players add @s fall 1


#execute as @e[tag=soccer] at @s if block ~ ~-1 ~ minecraft:air run scoreboard players add @s fall 1

#execute as @e[tag=soccer] at @s if block ~ ~ ~ minecraft:air run scoreboard players add @s fall 1
############ execute fall effect

# 1
execute as @e[tag=soccer,scores={fall=2..6}] at @s run tp @s ~ ~-0.1 ~

# 2
execute as @e[tag=soccer,scores={fall=7..17}] at @s run tp @s ~ ~-0.3 ~

# 3
execute as @e[tag=soccer,scores={fall=18..30}] at @s run tp @s ~ ~-0.5 ~

# 4
execute as @e[tag=soccer,scores={fall=31..}] at @s run tp @s ~ ~-0.8 ~

# reset fall
scoreboard players set @e[tag=soccer] blk_air 0

execute as @e[tag=soccer] at @s if block ~ ~-0.01 ~ air run scoreboard players add @s blk_air 1

execute as @e[tag=soccer] at @s if block ~ ~-0.01 ~ player_head run scoreboard players add @s blk_air 1

execute as @e[tag=soccer,scores={blk_air=0,fall=10..}] at @s run scoreboard players remove @s fall 10

execute as @e[tag=soccer,scores={blk_air=0,fall=30..}] at @s run scoreboard players remove @s fall 10

execute as @e[tag=soccer,scores={blk_air=0,fall=50..}] at @s run scoreboard players remove @s fall 10

execute as @e[tag=soccer,scores={blk_air=0,fall=100..}] at @s run scoreboard players remove @s fall 10

# reduce power in ground
execute as @e[tag=soccer,scores={blk_air=0,power=1..}] at @s run scoreboard players remove @s power 1

execute as @e[tag=soccer,scores={blk_air=0,fall=..-1}] at @s run scoreboard players set @s fall 0

execute as @e[tag=soccer,scores={blk_air=0,fall=1..20}] at @s run playsound minecraft:block.wood.break ambient @a ~ ~ ~ 1 0.5
execute as @e[tag=soccer,scores={blk_air=0,fall=1..20}] at @s run scoreboard players set @s fall 0

# time -1
scoreboard players set @e[tag=soccer] blk_head -1

# sound
execute as @e[tag=soccer,scores={blk_air=0,fall=1..}] at @s run playsound minecraft:block.wood.break ambient @a ~ ~ ~ 4 0.8

# reverse

execute as @e[tag=soccer,scores={blk_air=0,fall=1..}] at @s run scoreboard players operation @s fall *= @s blk_head



scoreboard players set @e[tag=soccer] blk_air 0

# ground stuck
execute as @e[tag=soccer] at @s if block ~ ~ ~ air run scoreboard players add @s blk_air 1

execute as @e[tag=soccer] at @s if block ~ ~ ~ player_head run scoreboard players add @s blk_air 1


execute as @e[tag=soccer,scores={blk_air=0}] at @s run tp @s ~ ~0.1 ~
############# bounce
# 1
execute as @e[tag=soccer,scores={fall=-6..-2}] at @s run tp @s ~ ~0.1 ~

# 2
execute as @e[tag=soccer,scores={fall=-17..-7}] at @s run tp @s ~ ~0.3 ~

# 3
execute as @e[tag=soccer,scores={fall=-30..-18}] at @s run tp @s ~ ~0.5 ~

# 4
execute as @e[tag=soccer,scores={fall=..-31}] at @s run tp @s ~ ~0.8 ~

execute as @e[tag=soccer,scores={fall=..-1}] at @s run scoreboard players add @s fall 1
#execute as @e[tag=soccer,scores={fall=-2}] at @s run tp @s ~ ~0.2 ~

# move up if soc in ground
scoreboard players set @e[tag=soccer] blk_air 0

execute as @e[tag=soccer] at @s if block ~ ~ ~ air run scoreboard players add @s blk_air 1

execute as @e[tag=soccer] at @s if block ~ ~ ~ minecraft:player_head run scoreboard players add @s blk_air 1
execute as @e[tag=soccer,scores={blk_air=0}] at @s run tp @s ~ ~1 ~
############################################

###################soccer generator#########

# summon pos soccer
execute as @e[tag=soccer,type=minecraft:armor_stand] at @s unless entity @e[distance=..1,type=minecraft:armor_stand,tag=pos_soccer] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pos_soccer"],NoGravity:1b,Marker:1b,Invisible:1b}

# set previous model air
#execute as @e[tag=pos_soccer] at @s unless entity @e[tag=soccer,distance=..1] if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ minecraft:air

scoreboard players set @e[tag=pos_soccer] blk_air 0

execute as @e[tag=soccer] at @s as @e[tag=pos_soccer,limit=1,sort=nearest] at @s run scoreboard players set @s blk_air -1

execute as @e[tag=pos_soccer,scores={blk_air=0}] at @s if block ~ ~ ~ minecraft:player_head run setblock ~ ~ ~ minecraft:air

# set soccer model
execute at @e[tag=pos_soccer,scores={blk_air=-1}] if block ~ ~ ~ air if entity @e[tag=soccer,distance=..1] run setblock ~ ~ ~ minecraft:player_head{Owner:{Id:"d0a6b6ce-6d25-4e90-8d9f-e1a333e3f3cd",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNjNTgxMGI5NzU0ZDJlMjc3ZTU1MWY2YThlNmFjOWIxM2VjN2ZhNmRjMDAwYjNlYWRhNWM0ODZlMWNkOTlmNSJ9fX0="}]}}}

# kill item
execute at @e[tag=pos_soccer] run kill @e[type=minecraft:item,distance=..3]

# score add time for pos soccer
#execute as @e[tag=pos_soccer] at @s run scoreboard players add @s time 1

# kill over time pos soc
#execute as @e[tag=pos_soccer,scores={time=300..}] run kill @s

#kill pos
execute as @e[tag=pos_soccer,scores={blk_air=0}] at @s run kill @s	
############################################

####################### POWER #################################

# lose power
execute as @e[tag=soccer,scores={power=1..}] at @s run scoreboard players remove @s power 1
execute as @e[tag=soccer,scores={superpower=1..}] at @s run scoreboard players remove @s superpower 1

# power limit 150
execute as @e[tag=soccer,scores={power=120..}] at @s run scoreboard players set @s power 120

execute as @e[tag=soccer,scores={power=1..}] at @s run tp @s ^ ^ ^-0.3

execute as @e[tag=soccer,scores={power=1..30}] at @s run tp @s ^ ^ ^-0.3

execute as @e[tag=soccer,scores={power=31..60}] at @s run tp @s ^ ^ ^-0.3

execute as @e[tag=soccer,scores={power=61..}] at @s run tp @s ^ ^ ^-0.4

execute as @e[tag=soccer,scores={superpower=1..}] at @s run tp @s ^ ^ ^-2


#############################################################

### particle effect
#execute as @e[tag=soccer,scores={power=0}] at @s run particle minecraft:item_snowball ~ ~ ~ 0.1 0.1 0.1 1 1

#execute as @e[tag=soccer,scores={power=1..}] at @s run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.01 1

execute as @e[tag=soccer,scores={superpower=1..}] at @s run particle minecraft:crit ~ ~-0.3 ~ 0.1 0.1 0.1 0.01 3


######################################ball#######################################
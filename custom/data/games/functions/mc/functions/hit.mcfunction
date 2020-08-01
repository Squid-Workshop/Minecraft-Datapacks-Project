

####################start
execute as @e[tag=view] at @s run scoreboard players add @s checked 0
####################


########################loops
#################################################################

###########################################################

execute as @e[tag=view,limit=1,scores={checked=0},sort=nearest] at @s unless block ^ ^ ^1 air run clone ^ ^ ^1 ^ ^ ^1 -1030 34 -1298

execute as @e[tag=view,limit=1,scores={checked=0},sort=nearest] at @s unless block ^ ^ ^1 air run scoreboard players set @s checked 2


execute as @e[tag=screen] at @s if score @e[scores={checked=2},limit=1] x = @s x if score @e[scores={checked=2},limit=1] y = @s y run clone -1030 34 -1298 -1030 34 -1298 ~ ~3 ~

kill @e[tag=view,scores={checked=1..}]

execute as @e[tag=view,limit=1,scores={checked=0},sort=nearest] at @s unless block ^ ^ ^1 air run clone ^ ^ ^1 ^ ^ ^1 -1030 34 -1298

execute as @e[tag=view,limit=1,scores={checked=0},sort=nearest] at @s unless block ^ ^ ^1 air run scoreboard players set @s checked 2


execute as @e[tag=screen] at @s if score @e[scores={checked=2},limit=1] x = @s x if score @e[scores={checked=2},limit=1] y = @s y run clone -1030 34 -1298 -1030 34 -1298 ~ ~3 ~

kill @e[tag=view,scores={checked=1..}]

execute as @e[tag=view,limit=1,scores={checked=0},sort=nearest] at @s unless block ^ ^ ^1 air run clone ^ ^ ^1 ^ ^ ^1 -1030 34 -1298

execute as @e[tag=view,limit=1,scores={checked=0},sort=nearest] at @s unless block ^ ^ ^1 air run scoreboard players set @s checked 2


execute as @e[tag=screen] at @s if score @e[scores={checked=2},limit=1] x = @s x if score @e[scores={checked=2},limit=1] y = @s y run clone -1030 34 -1298 -1030 34 -1298 ~ ~3 ~

kill @e[tag=view,scores={checked=1..}]


###########################################################################################################################


##########end
execute as @e[tag=view] at @s run scoreboard players set @s checked 0
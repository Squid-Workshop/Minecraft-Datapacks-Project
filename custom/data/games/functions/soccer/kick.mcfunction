
###################################kick##################################

# goal keeper gloves
execute as @a[nbt={SelectedItem:{id:"minecraft:quartz"}}] at @s as @e[tag=soccer,distance=..1.5] run tp @s ^ ^1.3 ^0.5

execute as @a[nbt={SelectedItem:{id:"minecraft:quartz"}}] at @s as @e[tag=soccer,distance=..1.5] run scoreboard players set @s fall 0



#execute as @a[scores={power=1..,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..1] run
# add kick score
execute as @a[scores={shift=1..}] run scoreboard players add @s kick 3

#sound
execute as @a[scores={power=1..,kick=4}] at @s if entity @e[tag=soccer,distance=1..7] run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 0.5 0.5

#execute as @a[scores={power=1..,kick=44}] at @s run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1 1

execute as @a[scores={power=1..,kick=88}] at @s if entity @e[tag=soccer,distance=..5] run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 0.5 2

#execute as @a[scores={shift=0,kick=1..}] run scoreboard players remove @s kick 1

# limit kick
#execute as @a[scores={kick=40..}] run scoreboard players set @s kick 40

# kick!
execute as @a[scores={power=1..,kick=1..},nbt={SelectedItem:{id:"minecraft:quartz"}}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run tp @e[tag=soccer,distance=..2.5] ^ ^0.02 ^0.1 facing entity @s


execute as @a[scores={power=1..,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run tp @e[tag=soccer,distance=..2.5] ^ ^0.6 ^1.5 facing entity @s
############################
#head
execute as @a at @s positioned ~ ~1.6 ~ at @e[tag=soccer,distance=..0.5] run tp @e[tag=soccer,distance=..0.5] ~ ~ ~ facing entity @s

#sound
execute as @a at @s positioned ~ ~1.6 ~ at @e[tag=soccer,distance=..0.5] run playsound minecraft:block.wood.break ambient @a ~ ~ ~ 4 0.8

# score move
execute as @a at @s positioned ~ ~1.6 ~ at @e[tag=soccer,distance=..0.5] run scoreboard players add @e[tag=soccer,distance=..0.5] superpower 3

execute as @a at @s positioned ~ ~1.6 ~ at @e[tag=soccer,distance=..0.5] run scoreboard players set @e[tag=soccer,distance=..0.5] fall -5

############################
# score move
execute as @a[scores={power=1..,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run scoreboard players operation @e[tag=soccer,distance=..2.5] power = @s power

#######add fall
execute as @a[scores={power=1..30,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run scoreboard players remove @e[tag=soccer,distance=..2] fall 5


execute as @a[scores={power=1..30,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run scoreboard players add @e[tag=soccer,distance=..2] superpower 2


execute as @a[scores={power=40..59,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run scoreboard players remove @e[tag=soccer,distance=..2] fall 10

execute as @a[scores={power=60..79,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run scoreboard players add @e[tag=soccer,distance=..2] superpower 10

execute as @a[scores={power=80..,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run scoreboard players remove @e[tag=soccer,distance=..2] fall 50


execute as @a[scores={power=80..,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run scoreboard players remove @e[tag=soccer,distance=..2] power 60

##########################

execute as @a[scores={power=1..,kick=1..},nbt={SelectedItem:{id:"minecraft:quartz"}}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run scoreboard players remove @e[tag=soccer,distance=..2] fall 20

#execute as @a[scores={power=1..,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run say k

# sound
execute as @a[scores={power=1..,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run playsound minecraft:block.wood.break ambient @a ~ ~ ~ 4 0.8

# effect
execute as @a[scores={power=1..,kick=1..}] at @s if score @s power = @s kick if entity @e[tag=soccer,distance=..2.5] run particle minecraft:poof ~ ~1 ~ 0.3 0.3 0.3 0.05 30

# reset kick
execute as @a[scores={power=1..,kick=1..}] at @s if score @s power = @s kick run scoreboard players set @s kick 0

# kick = power
execute as @a run scoreboard players operation @s power = @s kick

##########################driggle
# driggling
execute as @a[nbt=!{SelectedItem:{}}] at @s if entity @e[tag=soccer,distance=..1.5] run tp @e[tag=soccer,distance=..1.5] ^ ^ ^0.1 facing entity @s

# score move
execute as @a[nbt=!{SelectedItem:{}}] at @s if entity @e[tag=soccer,distance=..1.5] as @e[tag=soccer,distance=..1.5] at @s run tp @s ^ ^ ^-2

#################################





#########################################################################
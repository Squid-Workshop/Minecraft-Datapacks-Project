##################################HIT EFFECT####################################
#1 bullet
#2 rocket
#3 builder
#4 plasma
################################################################################

################################## hit the block

###############type plasma
# particle
execute at @e[tag=plasma] unless block ~ ~ ~ air run particle minecraft:lava ~ ~0.5 ~ 0.1 0.1 0.1 1 50

execute at @e[tag=plasma] unless block ~ ~ ~ air run particle minecraft:totem_of_undying ~ ~1 ~ 0.1 0.1 0.1 0.5 50

execute at @e[tag=plasma] unless block ~ ~ ~ air run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.3 0.3 0.3 0.1 50

execute at @e[tag=plasma] unless block ~ ~ ~ air run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10
#h
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run particle minecraft:lava ~ ~0.5 ~ 0.1 0.1 0.1 1 50

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run particle minecraft:totem_of_undying ~ ~1 ~ 0.1 0.1 0.1 0.5 50
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10
#b
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run particle minecraft:lava ~ ~0.5 ~ 0.1 0.1 0.1 1 50
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run particle minecraft:totem_of_undying ~ ~1 ~ 0.1 0.1 0.1 0.5 50
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10


#EFFECT

execute at @e[tag=plasma] unless block ~ ~ ~ air run effect give @a[distance=2..4] minecraft:poison 3 1

#distance near
execute at @e[tag=plasma] unless block ~ ~ ~ air run effect give @a[distance=..2] minecraft:poison 5 2

execute at @e[tag=plasma] unless block ~ ~ ~ air run effect give @a[distance=..2] minecraft:wither 3 3

execute at @e[tag=plasma] unless block ~ ~ ~ air run effect give @a[distance=..2] minecraft:blindness 2 1 true

execute at @e[tag=plasma] unless block ~ ~ ~ air run effect give @a[distance=..2] minecraft:slowness 1 3 true

# sound
execute at @e[tag=plasma] unless block ~ ~ ~ air run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 3 0.9

execute at @e[tag=plasma] unless block ~ ~ ~ air run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 3 2
#h
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 3 0.9

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 3 2
#b
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 3 0.9

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 3 2
#########plasma

##body
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run effect give @a[distance=..2] minecraft:poison 5 3

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run effect give @a[distance=..2] minecraft:wither 4 3

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run effect give @a[distance=..2] minecraft:blindness 2 1 true

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=plasma] run effect give @a[distance=..2] minecraft:slowness 1 4 true

##head

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run effect give @a[distance=..2] minecraft:poison 5 3

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run effect give @a[distance=..2] minecraft:wither 5 5 true

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run effect give @a[distance=..2] minecraft:blindness 4 1 true

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=plasma] run effect give @a[distance=..2] minecraft:slowness 3 5 true

###############type builder

#buildergun
#execute at @e[tag=buildergun] unless block ~ ~ ~ air run clone -995 35 -1908 -997 33 -1910 ~-1 ~-1 ~-1

execute at @e[tag=buildergun] unless block ~1 ~ ~ air run fill ~ ~ ~ ~ ~-30 ~ stone replace air


execute at @e[tag=buildergun] unless block ~ ~ ~1 air run fill ~ ~ ~ ~ ~-30 ~ stone replace air


execute at @e[tag=buildergun] unless block ~-1 ~ ~ air run fill ~ ~ ~ ~ ~-30 ~ stone replace air


execute at @e[tag=buildergun] unless block ~ ~ ~-1 air run fill ~ ~ ~ ~ ~-30 ~ stone replace air
#eraser
execute as @e[tag=eraser] at @s unless block ~ ~ ~ air run scoreboard players add @s bulletrange 100


###############type bullet

# particle
execute at @e[tag=bullet] unless block ~ ~ ~ air run particle minecraft:block lava ~ ~0.3 ~ 0.1 0.1 0.1 1 10

execute at @e[tag=bullet] unless block ~ ~ ~ air run particle minecraft:smoke ~ ~0.3 ~ 0.1 0.1 0.1 0.05 3

execute at @e[tag=bullet] unless block ~ ~ ~ air run particle minecraft:poof ~ ~0.3 ~ 0.1 0.1 0.1 0.01 1


# sound
execute at @e[tag=bullet] unless block ~ ~ ~ air run playsound minecraft:block.sand.hit ambient @a ~ ~ ~ 3 2

#eraser
execute at @e[tag=eraser] unless block ~ ~ ~ air run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air

# kill
execute at @e[tag=bullet] unless block ~ ~ ~ air run kill @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud]

execute as @e[scores={bulletrange=100..}] run kill @s

###############type rocket

# particle
execute at @e[tag=rocket] unless block ~ ~ ~ air run particle minecraft:explosion_emitter ~ ~0.3 ~ 0.1 0.1 0.1 1 1

# sound
execute at @e[tag=rocket] unless block ~ ~ ~ air run playsound minecraft:generic.explode ambient @a ~ ~ ~ 4 2

#creeper
execute at @e[tag=rocket] unless block ~ ~ ~ air run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:6}
execute at @e[tag=rocket] unless block ~ ~ ~ air run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:6}

# kill
execute at @e[tag=rocket] unless block ~ ~ ~ air run kill @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud]

#######rocket hit player

# particle
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..1.2,tag=rocket] run particle minecraft:explosion_emitter ~ ~0.3 ~ 0.1 0.1 0.1 1 1

# sound
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..1.2,tag=rocket] run playsound minecraft:generic.explode ambient @a ~ ~ ~ 4 2

#creeper
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..1.2,tag=rocket] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:6}

# kill
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..1.2,tag=rocket] run kill @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud]


################################## hit the villager/player ##############################
# h for head
# b for body

##################################reset
scoreboard players set @a[nbt={HurtTime:1s},scores={bullethit=1..}] bullethit 0

################################## bullet hit

#########bullet
# b

#player
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run scoreboard players operation @s bullethit = @e[distance=..0.8,tag=bullet,limit=1] playerID

# h

#player
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run scoreboard players operation @s bullethit = @e[distance=..0.8,tag=bullet,limit=1] playerID

############rocket
# b

#player
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=rocket] run scoreboard players operation @s bullethit = @e[distance=..0.8,tag=rocket,limit=1] playerID

# h

#player
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=rocket] run scoreboard players operation @s bullethit = @e[distance=..0.8,tag=rocket,limit=1] playerID

################################## hurt by gun

#remove
scoreboard players remove @a[scores={hurtbg=1..}] hurtbg 1

#set
scoreboard players set @a[scores={hurtbg=..-1}] hurtbg 0

#player
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run scoreboard players add @s hurtbg 100

# h

#player
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run scoreboard players add @s hurtbg 100

########rocket

#player
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=rocket] run scoreboard players add @s hurtbg 10

# h

#player
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=rocket] run scoreboard players add @s hurtbg 10

################################## sound 1

# b
#villager
execute at @e[type=minecraft:villager] positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run playsound minecraft:block.gravel.break ambient @a ~ ~ ~ 4 1.1

#player
execute at @e[type=minecraft:player] positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run playsound minecraft:entity.arrow.hit_player ambient @a ~ ~ ~ 4 0.5

# h
#villager
execute at @e[type=minecraft:villager] positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 4 1.2

#player
execute at @e[type=minecraft:player] positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run playsound minecraft:entity.arrow.hit_player ambient @a ~ ~ ~ 4 0.5

################################## visual effect 1

# b
#villager
execute at @e[type=minecraft:villager] positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run particle minecraft:block redstone_block ~ ~ ~ 0.3 0.3 0.3 1 20

#player
execute at @e[type=minecraft:player] positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run particle minecraft:block redstone_block ~ ~ ~ 0.4 0.3 0.4 1 100

# h
#villager
execute at @e[type=minecraft:villager] positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run particle minecraft:block redstone_block ~ ~ ~ 0.3 0.2 0.3 0.5 40

#player
execute at @e[type=minecraft:player] positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run particle minecraft:block redstone_block ~ ~ ~ 0.3 0.3 0.3 1 60

################################## damage effect 1

# b
#villager
# execute as @e[type=minecraft:villager] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run effect give @s instant_damage 1

#player

###########other effects

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run effect give @s slowness 1 1

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run effect give @s glowing 5 1 true

#####auto
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run effect give @s instant_damage 1

#####shotgun

#execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=b_shot] run effect give @s instant_health 1 0

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=b_shot] run effect give @s instant_damage 1 0


execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=shot1] run effect give @s instant_damage 1 1

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=shot1] run effect give @s instant_health 1 0


execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=shot2] run effect give @s instant_damage 1 1

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=shot3] run effect give @s instant_damage 1 2

execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=shot6] run effect give @s instant_damage 1 1

#######rocket
execute as @e[type=minecraft:player] at @s positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=rocket] run effect give @s instant_damage 1 10

# h

#villager
# execute as @e[type=minecraft:villager] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run effect give @s minecraft:instant_health 1 0

# execute as @e[type=minecraft:villager] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run effect give @s instant_damage 1 1

##############################player#####################################

#other effect

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run effect give @s minecraft:nausea 6 10 true

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run effect give @s minecraft:slowness 1 1

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run effect give @s minecraft:glowing 5 1

##################damage#################

############auto
#execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run effect give @s minecraft:instant_health 1 0

execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run effect give @s instant_damage 1 1


############shotgun
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=b_shot] run effect give @s instant_damage 1 3

############rocket
execute as @e[type=minecraft:player] at @s positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=rocket] run effect give @s instant_damage 1 10
##########################################

#########################################################################################

##################################death detect
execute as @a[nbt={DeathTime:1s},scores={bullethit=1,hurtbg=1..}] run say was killed under @a[scores={playerID=1}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=2,hurtbg=1..}] run say was killed under @a[scores={playerID=2}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=3,hurtbg=1..}] run say was killed under @a[scores={playerID=3}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=4,hurtbg=1..}] run say was killed under @a[scores={playerID=4}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=5,hurtbg=1..}] run say was killed under @a[scores={playerID=5}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=6,hurtbg=1..}] run say was killed under @a[scores={playerID=6}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=7,hurtbg=1..}] run say was killed under @a[scores={playerID=7}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=8,hurtbg=1..}] run say was killed under @a[scores={playerID=8}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=9,hurtbg=1..}] run say was killed under @a[scores={playerID=9}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=10,hurtbg=1..}] run say @s was killed under @a[scores={playerID=10}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=11,hurtbg=1..}] run say @s was killed under @a[scores={playerID=11}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=12,hurtbg=1..}] run say @s was killed under @a[scores={playerID=12}]'s gunfire.
execute as @a[nbt={DeathTime:1s},scores={bullethit=1,hurtbg=1..}] run scoreboard players add @a[scores={playerID=1}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=2,hurtbg=1..}] run scoreboard players add @a[scores={playerID=2}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=3,hurtbg=1..}] run scoreboard players add @a[scores={playerID=3}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=4,hurtbg=1..}] run scoreboard players add @a[scores={playerID=4}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=5,hurtbg=1..}] run scoreboard players add @a[scores={playerID=5}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=6,hurtbg=1..}] run scoreboard players add @a[scores={playerID=6}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=7,hurtbg=1..}] run scoreboard players add @a[scores={playerID=7}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=8,hurtbg=1..}] run scoreboard players add @a[scores={playerID=8}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=9,hurtbg=1..}] run scoreboard players add @a[scores={playerID=9}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=10,hurtbg=1..}] run scoreboard players add @a[scores={playerID=10}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=11,hurtbg=1..}] run scoreboard players add @a[scores={playerID=11}] Kills 1
execute as @a[nbt={DeathTime:1s},scores={bullethit=12,hurtbg=1..}] run scoreboard players add @a[scores={playerID=12}] Kills 1


##################################kill bullet
#execute at @e[type=minecraft:player] positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run kill @e[distance=..0.8,tag=bullet]

#execute at @e[type=minecraft:villager] positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run kill @e[distance=..0.5,tag=bullet]

#execute at @e[type=minecraft:villager] positioned ~ ~0.65 ~ if entity @e[distance=..0.8,tag=bullet] run kill @e[distance=..0.8,tag=bullet]

#execute at @e[type=minecraft:player] positioned ~ ~1.6 ~ if entity @e[distance=..0.5,tag=bullet] run kill @e[distance=..0.5,tag=bullet]




##################################
##################################
##################################
##################################
##################################
##################################
##################################
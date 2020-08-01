
#################################outlaw ranger
###########thrust

#effect
execute if entity @s[scores={lever=0..80}] at @s run effect give @s minecraft:levitation 1 15 true

execute if entity @s[scores={lever=0..80}] at @s run effect give @s minecraft:poison 1 1 true

#sound
execute if entity @s[scores={lever=0..80}] at @s run playsound minecraft:entity.blaze.shoot ambient @s ~ ~ ~ 2 0.5

execute if entity @s[scores={lever=0..80}] at @s run playsound minecraft:entity.ender_dragon.growl ambient @s ~ ~ ~ 2 0.5

#effect
execute if entity @s[scores={lever=0..80}] at @s run particle minecraft:angry_villager ~ ~0.7 ~ 0.5 0.3 0.5 1 10

execute if entity @s[scores={lever=0..80}] at @s run particle minecraft:poof ~ ~0.7 ~ 1 0.3 1 0.08 50

execute if entity @s[scores={lever=0..80}] at @s run particle minecraft:smoke ~ ~0.7 ~ 1 0.3 1 0.08 50

execute if entity @s[scores={lever=0..80}] at @s run particle minecraft:firework ~ ~0.7 ~ 0.5 1 0.5 0.08 30

# up particle
execute if entity @s[scores={lever=132..}] at @s run particle minecraft:firework ~ ~ ~ 0.3 0.2 0.3 0.08 1

execute if entity @s[scores={lever=132..}] at @s run particle minecraft:poof ~ ~ ~ 0.3 0.2 0.3 0.08 1

execute if entity @s[scores={lever=132..}] at @s run particle minecraft:dripping_lava ~ ~ ~ 0.3 0.2 0.3 0.08 1
execute if entity @s[scores={lever=132..}] at @s run particle minecraft:flame ~ ~ ~ 0.3 0.2 0.3 0.08 1
#score
execute if entity @s[scores={lever=0..80}] at @s run scoreboard players add @s lever 80



###########no power
execute if entity @s[scores={lever=81..130}] at @s run effect give @s minecraft:slow_falling 1 1 true

execute if entity @s[scores={lever=81..130}] at @s run scoreboard players add @s lever 2

#effect
execute if entity @s[scores={lever=81..131}] at @s run particle minecraft:flame ~ ~ ~ 0.3 0.2 0.3 0.08 1

execute if entity @s[scores={lever=81..131}] at @s run particle minecraft:smoke ~ ~ ~ 0.3 0.2 0.3 0.08 3

#sound
execute if entity @s[scores={lever=81..131}] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 1 0.5

#sound
#execute if entity @s[scores={shif entityt_bool=0,lever=0}] at @s run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 1 2


#score
#execute if entity @s[scores={shif entityt_bool=0,lever=0}] at @s run scoreboard players set D_HJT lever -1

##############################################
# if ( Timer life == 1 && Somebody on the train)
# then summon block-carrying minecarts
execute if entity @e[distance=..5,tag=train_timer,scores={life=1}] run execute positioned ~ ~10 ~ if entity @e[type=minecraft:player,dx=39,dy=8,dz=6] run execute positioned ~45 ~-9 ~10 run function visual_effects:train_summon_blocks

# if ( Timer life == 101 )
# then reset the timer to 1
scoreboard players add @e[distance=..5,tag=train_timer] life 1
scoreboard players set @e[distance=..5,tag=train_timer,scores={life=41}] life 1

# keeps block-carrying minecarts moving
execute as @e[tag=train_blocks] run data merge entity @s {Motion:[-1.0,0.0,0.0]}

# kill block-carrying minecarts when reaches the end
execute positioned ~-10 ~1 ~10 as @e[tag=train_blocks,dx=10,dy=15,dz=5] run kill @s
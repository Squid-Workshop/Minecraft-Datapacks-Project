
particle minecraft:flame ~ ~ ~ 3 0.5 3 0.0001 6 force

particle minecraft:lava ~ ~ ~ 3 0.1 3 0.0001 3 force

execute if score fire life matches 0 run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 3 2

execute if score fire life matches 0 as @e[distance=..8,type=#games:supported] positioned ~-8 ~-1 ~-8 if entity @s[dy=3,dx=16,dz=16] run function games:throwable/molotov/damage

execute if score fire life matches 0 as @a[distance=..8] positioned ~-8 ~-1 ~-8 if entity @s[dy=3,dx=16,dz=16] run function games:throwable/molotov/damage

execute if entity @e[tag=molotov_effect,distance=..4] run kill @s







execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:anvil run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 3 2

execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:logs run playsound minecraft:gun/hit/wood1 ambient @a ~ ~ ~ 0.6 1
execute if entity @s[tag=bullet] if block ~ ~ ~ #minecraft:planks run playsound minecraft:gun/hit/wood1 ambient @a ~ ~ ~ 0.6 1

execute if entity @s[tag=bullet] if block ~ ~ ~ #games:terracotta run playsound minecraft:gun/hit/quartz2 ambient @a ~ ~ ~ 0.6 2

execute if entity @s[tag=bullet] if block ~ ~ ~ #games:concrete run playsound minecraft:gun/hit/quartz1 ambient @a ~ ~ ~ 0.6 1.5
execute if entity @s[tag=bullet] if block ~ ~ ~ #games:stones run playsound minecraft:gun/hit/quartz1 ambient @a ~ ~ ~ 0.6 1.5
execute if entity @s[tag=bullet] if block ~ ~ ~ #games:ores run playsound minecraft:gun/hit/quartz1 ambient @a ~ ~ ~ 0.6 1.5

execute if entity @s[tag=bullet] if block ~ ~ ~ #games:dirt run playsound minecraft:gun/hit/dirt1 ambient @a ~ ~ ~ 0.6 1.5
execute if entity @s[tag=bullet] if block ~ ~ ~ #games:misc run playsound minecraft:gun/hit/dirt1 ambient @a ~ ~ ~ 0.6 1.5

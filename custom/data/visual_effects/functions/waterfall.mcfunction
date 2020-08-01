scoreboard players add @a sound 1

execute positioned -965.00 35.42 -1894.25 if entity @a[distance=..40,scores={sound=2}] run playsound minecraft:ambient.underwater.enter ambient @a ~ ~ ~ 2 0.5

execute positioned -967.00 34.27 -1911.11 if entity @a[distance=..40,scores={sound=2}] run playsound minecraft:ambient.underwater.enter ambient @a ~ ~ ~ 2 0.5

execute positioned -960.00 33.96 -1873.84 if entity @a[distance=..40,scores={sound=2}] run playsound minecraft:ambient.underwater.enter ambient @a ~ ~ ~ 2 0.5

execute positioned -968.00 33 -1896 if entity @a[distance=..40] run particle minecraft:poof ~ ~ ~ 1 0.1 4 0.1 20

execute positioned -968.5 33 -1910.5 if entity @a[distance=..40] run particle minecraft:poof ~ ~ ~ 0.7 0.1 1.5 0.1 5

execute positioned -963.8 33 -1873.84 if entity @a[distance=..40] run particle minecraft:poof ~ ~ ~ 1 0.1 4.5 0.1 20

#score



execute as @a[scores={sound=3..}] run scoreboard players set @a sound 0

#execute positioned -965.00 35.42 -1894.25 run

#execute positioned -967.00 34.27 -1911.11 run

#execute positioned -960.00 33.96 -1873.84 run
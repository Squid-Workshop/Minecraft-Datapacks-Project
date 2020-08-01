

execute if score @s reload matches 1 run playsound minecraft:gun/p90/p90_cliprelease player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 10 run playsound minecraft:gun/p90/p90_clipout player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 20 run playsound minecraft:gun/p90/p90_draw player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 30 run playsound minecraft:gun/p90/p90_clipin player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 40 run playsound minecraft:gun/p90/p90_boltforward player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 45 run playsound minecraft:gun/p90/p90_cliphit player @a ~ ~ ~ 0.5 0.8
effect give @s slowness 4 1 true

title @s actionbar ["",{"text":"reloading..."}]





execute if score @s reload matches 1 run playsound minecraft:gun/p90/p90_cliprelease player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 10 run playsound minecraft:gun/m4a1/m4a1_clipout player @a ~ ~ ~ 0.5 0.6
execute if score @s reload matches 30 run playsound minecraft:gun/p90/p90_draw player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 50 run playsound minecraft:gun/m4a1/m4a1_clipin player @a ~ ~ ~ 0.5 0.6
execute if score @s reload matches 65 run playsound minecraft:gun/minigun/chain player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 80 run playsound minecraft:gun/p90/p90_clipin player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 95 run playsound minecraft:gun/minigun/chain player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 110 run playsound minecraft:gun/p90/p90_clipin player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 125 run playsound minecraft:gun/p90/p90_draw player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 135 run playsound minecraft:gun/p90/p90_boltforward player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 145 run playsound minecraft:gun/m4a1/m4a1_cliphit player @a ~ ~ ~ 0.5 0.8
effect give @s slowness 4 1 true

title @s actionbar ["",{"text":"reloading..."}]



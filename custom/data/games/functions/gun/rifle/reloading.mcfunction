

execute if score @s reload matches 1 run playsound minecraft:gun/m4a1/m4a1_clipout player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 25 run playsound minecraft:gun/m4a1/m4a1_clipin player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 45 run playsound minecraft:gun/m4a1/m4a1_cliphit player @a ~ ~ ~ 0.5 0.8

effect give @s slowness 4 2 true

title @s actionbar ["",{"text":"reloading..."}]



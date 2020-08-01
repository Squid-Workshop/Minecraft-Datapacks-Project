

execute if score @s reload matches 1 run playsound minecraft:gun/m4a1/m4a1_cliphit player @a ~ ~ ~ 0.8 0.8
execute if score @s reload matches 7 run playsound minecraft:gun/shotgun/xm1014_insertshell_02 player @a ~ ~ ~ 0.5 0.8
execute if score @s reload matches 20 run playsound minecraft:gun/shotgun/xm1014_insertshell_02 player @a ~ ~ ~ 0.5 0.9
execute if score @s reload matches 33 run playsound minecraft:gun/m4a1/m4a1_cliphit player @a ~ ~ ~ 0.5 0.7
#execute if score @s reload matches 21 run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.5 0.8

effect give @s slowness 4 0 true

title @s actionbar ["",{"text":"reloading..."}]





execute if score @s reload matches 1 run playsound minecraft:gun/m4a1/m4a1_silencer_screw_on_start player @s ~ ~ ~ 0.2 1

execute if score @s reload matches 15 run playsound minecraft:gun/m4a1/m4a1_silencer_screw_1 player @a ~ ~ ~ 0.2 1

execute if score @s reload matches 20 run playsound minecraft:gun/m4a1/m4a1_silencer_screw_1 player @a ~ ~ ~ 0.2 1

execute if score @s reload matches 25 run playsound minecraft:gun/m4a1/m4a1_silencer_screw_1 player @a ~ ~ ~ 0.2 1


effect give @s slowness 4 2 true

title @s actionbar ["",{"text":"removing silencer..."}]



scoreboard players set @s _var01 100
execute at @s[tag=wpb,scores={_var01=100}] run execute store result score @s _var02 run data get entity @s Pos[1] 100
execute at @s[tag=wpb,scores={_var01=100}] run scoreboard players operation @s _var02 %= @s _var01
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:slabs[type=top] if entity @s[scores={_var02=..49}] run scoreboard players set @s state -1
execute at @s[tag=wpb,scores={_var01=100}] if block ^ ^ ^ #minecraft:slabs[type=bottom] if entity @s[scores={_var02=50..}] run scoreboard players set @s state -1
scoreboard players reset @s _var01
scoreboard players reset @s _var02
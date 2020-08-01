
execute as @e[tag=lcbase] at @s run function build:lawn/rng
execute as @e[tag=lcbase,scores={_var01=00..07}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ brain_coral_fan
execute as @e[tag=lcbase,scores={_var01=08..14}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ brain_coral
execute as @e[tag=lcbase,scores={_var01=15..22}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ bubble_coral_fan
execute as @e[tag=lcbase,scores={_var01=13..29}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ bubble_coral
execute as @e[tag=lcbase,scores={_var01=30..37}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ fire_coral_fan
execute as @e[tag=lcbase,scores={_var01=38..44}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ fire_coral
execute as @e[tag=lcbase,scores={_var01=45..52}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ horn_coral_fan
execute as @e[tag=lcbase,scores={_var01=53..59}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ horn_coral
execute as @e[tag=lcbase,scores={_var01=60..67}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ tube_coral_fan
execute as @e[tag=lcbase,scores={_var01=68..74}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ tube_coral
execute as @e[tag=lcbase,scores={_var01=75..89}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ seagrass
execute as @e[tag=lcbase,scores={_var01=90..93}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ minecraft:sea_pickle[pickles=1]
execute as @e[tag=lcbase,scores={_var01=94..96}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ minecraft:sea_pickle[pickles=2]
execute as @e[tag=lcbase,scores={_var01=97..98}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ minecraft:sea_pickle[pickles=3]
execute as @e[tag=lcbase,scores={_var01=99..99}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run fill ~ ~ ~ ~ ~ ~ minecraft:sea_pickle[pickles=4]
kill @e[tag=lcbase]

execute as @e[tag=lawnd] at @s run summon area_effect_cloud ~ ~ ~ {Rotation:[0.0f,0.0f],Tags:["lcmk"],Duration:10}
#execute as @e[tag=lawnd,scores={_var01=..49}] at @s run summon area_effect_cloud ~ ~ ~ {Rotation:[180.0f,0.0f],Tags:["lcmk"],Duration:10}
execute as @e[tag=lawnd] at @s run execute store result score @e[tag=lcmk,distance=..0.1] _var00 run data get entity @e[tag=lcmk,limit=1,distance=..0.1] UUID[3] 0.0000000001
execute as @e[tag=lawnd] at @s run scoreboard players set @s _var00 6
execute as @e[tag=lawnd] at @s run scoreboard players operation @e[tag=lcmk,distance=..0.1] _var00 %= @s _var00
execute as @e[tag=lawnd] at @s run scoreboard players add @e[tag=lcmk,distance=..0.1] _var00 1




kill @e[tag=lawnc]
kill @e[tag=lawnd]

#height:1,2,3,4
execute as @e[tag=lcmk] at @s run scoreboard players set @e[tag=lcmk] _var05 5
execute as @e[tag=lcmk] at @s run scoreboard players set @e[tag=lcmk] _var04 100
execute as @e[tag=lcmk] at @s run execute at @s run function build:lawn/rng
execute as @e[tag=lcmk] at @s run scoreboard players operation @s _var04 = @s _var01
execute as @e[tag=lcmk] at @s run scoreboard players operation @s _var04 %= @s _var05
execute as @e[tag=lcmk] at @s run function build:lawn/coral_level
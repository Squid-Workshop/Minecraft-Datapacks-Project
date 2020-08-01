#brain bubble fire horn tube 
execute at @s run function build:lawn/rng

execute at @s[scores={_var04=0}] run fill ~ ~ ~ ~ ~ ~ brain_coral_block replace #build:air_water
execute at @s[scores={_var04=1}] run fill ~ ~ ~ ~ ~ ~ bubble_coral_block replace #build:air_water
execute at @s[scores={_var04=2}] run fill ~ ~ ~ ~ ~ ~ fire_coral_block replace #build:air_water
execute at @s[scores={_var04=3}] run fill ~ ~ ~ ~ ~ ~ horn_coral_block replace #build:air_water
execute at @s[scores={_var04=4}] run fill ~ ~ ~ ~ ~ ~ tube_coral_block replace #build:air_water




execute at @s[scores={_var01=00..09}] run tp @s ^ ^ ^
execute at @s[scores={_var01=10..19}] run tp @s ^ ^ ^
execute at @s[scores={_var01=20..29}] run tp @s ^ ^ ^
execute at @s[scores={_var01=30..39}] run tp @s ^ ^ ^1
execute at @s[scores={_var01=40..49}] run tp @s ^ ^ ^
execute at @s[scores={_var01=50..59}] run tp @s ^ ^ ^-1
execute at @s[scores={_var01=60..69}] run tp @s ^1 ^ ^
execute at @s[scores={_var01=70..79}] run tp @s ^ ^ ^
execute at @s[scores={_var01=80..89}] run tp @s ^-1 ^ ^
execute at @s[scores={_var01=90..99}] run tp @s ^ ^ ^

execute at @s[scores={_var04=0}] run fill ~ ~ ~ ~ ~ ~ brain_coral_block replace #build:air_water
execute at @s[scores={_var04=1}] run fill ~ ~ ~ ~ ~ ~ bubble_coral_block replace #build:air_water
execute at @s[scores={_var04=2}] run fill ~ ~ ~ ~ ~ ~ fire_coral_block replace #build:air_water
execute at @s[scores={_var04=3}] run fill ~ ~ ~ ~ ~ ~ horn_coral_block replace #build:air_water
execute at @s[scores={_var04=4}] run fill ~ ~ ~ ~ ~ ~ tube_coral_block replace #build:air_water


execute at @s run function build:lawn/rng
execute at @s[scores={_var02=00..29}] positioned ~ ~1 ~ unless block ~ ~ ~ #corals run summon area_effect_cloud ~ ~ ~ {Tags:["lcplt"],Duration:2}
execute at @s run function build:lawn/rng
execute at @s[scores={_var02=00..29}] positioned ~1 ~ ~ unless block ~ ~ ~ #corals run summon area_effect_cloud ~ ~ ~ {Tags:["lcplt","east"],Duration:2}
execute at @s run function build:lawn/rng
execute at @s[scores={_var02=00..29}] positioned ~-1 ~ ~ unless block ~ ~ ~ #corals run summon area_effect_cloud ~ ~ ~ {Tags:["lcplt","west"],Duration:2}
execute at @s run function build:lawn/rng
execute at @s[scores={_var02=00..29}] positioned ~ ~ ~1 unless block ~ ~ ~ #corals run summon area_effect_cloud ~ ~ ~ {Tags:["lcplt","south"],Duration:2}
execute at @s run function build:lawn/rng
execute at @s[scores={_var02=00..29}] positioned ~ ~ ~-1 unless block ~ ~ ~ #corals run summon area_effect_cloud ~ ~ ~ {Tags:["lcplt","north"],Duration:2}

execute as @e[tag=lcplt] at @s run function build:lawn/rng



execute as @e[tag=lcplt,tag=east,scores={_var01=00..19}] at @s run fill ~ ~ ~ ~ ~ ~ brain_coral_wall_fan[facing=east] replace #build:air_water
execute as @e[tag=lcplt,tag=east,scores={_var01=20..39}] at @s run fill ~ ~ ~ ~ ~ ~ bubble_coral_wall_fan[facing=east] replace #build:air_water
execute as @e[tag=lcplt,tag=east,scores={_var01=40..59}] at @s run fill ~ ~ ~ ~ ~ ~ fire_coral_wall_fan[facing=east] replace #build:air_water
execute as @e[tag=lcplt,tag=east,scores={_var01=60..79}] at @s run fill ~ ~ ~ ~ ~ ~ horn_coral_wall_fan[facing=east] replace #build:air_water
execute as @e[tag=lcplt,tag=east,scores={_var01=80..99}] at @s run fill ~ ~ ~ ~ ~ ~ tube_coral_wall_fan[facing=east] replace #build:air_water

execute as @e[tag=lcplt,tag=west,scores={_var01=00..19}] at @s run fill ~ ~ ~ ~ ~ ~ brain_coral_wall_fan[facing=west] replace #build:air_water
execute as @e[tag=lcplt,tag=west,scores={_var01=20..39}] at @s run fill ~ ~ ~ ~ ~ ~ bubble_coral_wall_fan[facing=west] replace #build:air_water
execute as @e[tag=lcplt,tag=west,scores={_var01=40..59}] at @s run fill ~ ~ ~ ~ ~ ~ fire_coral_wall_fan[facing=west] replace #build:air_water
execute as @e[tag=lcplt,tag=west,scores={_var01=60..79}] at @s run fill ~ ~ ~ ~ ~ ~ horn_coral_wall_fan[facing=west] replace #build:air_water
execute as @e[tag=lcplt,tag=west,scores={_var01=80..99}] at @s run fill ~ ~ ~ ~ ~ ~ tube_coral_wall_fan[facing=west] replace #build:air_water

execute as @e[tag=lcplt,tag=south,scores={_var01=00..19}] at @s run fill ~ ~ ~ ~ ~ ~ brain_coral_wall_fan[facing=south] replace #build:air_water
execute as @e[tag=lcplt,tag=south,scores={_var01=20..39}] at @s run fill ~ ~ ~ ~ ~ ~ bubble_coral_wall_fan[facing=south] replace #build:air_water
execute as @e[tag=lcplt,tag=south,scores={_var01=40..59}] at @s run fill ~ ~ ~ ~ ~ ~ fire_coral_wall_fan[facing=south] replace #build:air_water
execute as @e[tag=lcplt,tag=south,scores={_var01=60..79}] at @s run fill ~ ~ ~ ~ ~ ~ horn_coral_wall_fan[facing=south] replace #build:air_water
execute as @e[tag=lcplt,tag=south,scores={_var01=80..99}] at @s run fill ~ ~ ~ ~ ~ ~ tube_coral_wall_fan[facing=south] replace #build:air_water

execute as @e[tag=lcplt,tag=north,scores={_var01=00..19}] at @s run fill ~ ~ ~ ~ ~ ~ brain_coral_wall_fan[facing=north] replace #build:air_water
execute as @e[tag=lcplt,tag=north,scores={_var01=20..39}] at @s run fill ~ ~ ~ ~ ~ ~ bubble_coral_wall_fan[facing=north] replace #build:air_water
execute as @e[tag=lcplt,tag=north,scores={_var01=40..59}] at @s run fill ~ ~ ~ ~ ~ ~ fire_coral_wall_fan[facing=north] replace #build:air_water
execute as @e[tag=lcplt,tag=north,scores={_var01=60..79}] at @s run fill ~ ~ ~ ~ ~ ~ horn_coral_wall_fan[facing=north] replace #build:air_water
execute as @e[tag=lcplt,tag=north,scores={_var01=80..99}] at @s run fill ~ ~ ~ ~ ~ ~ tube_coral_wall_fan[facing=north] replace #build:air_water

execute as @e[tag=lcplt,scores={_var01=00..07}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ brain_coral_fan replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=08..14}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ brain_coral replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=15..22}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ bubble_coral_fan replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=13..29}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ bubble_coral replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=30..37}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ fire_coral_fan replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=38..44}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ fire_coral replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=45..52}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ horn_coral_fan replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=53..59}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ horn_coral replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=60..67}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ tube_coral_fan replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=68..74}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ tube_coral replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=75..89}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ seagrass replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=90..93}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ minecraft:sea_pickle[pickles=1] replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=94..96}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ minecraft:sea_pickle[pickles=2] replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=97..98}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ minecraft:sea_pickle[pickles=3] replace #build:air_water
execute as @e[tag=lcplt,scores={_var01=99..99}] at @s if block ~ ~-1 ~ #coral_blocks run fill ~ ~ ~ ~ ~ ~ minecraft:sea_pickle[pickles=4] replace #build:air_water

kill @e[tag=lcplt]



execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water replace air
#execute at @s[scores={_var01=..}] run tp @s ^ ^ ^

scoreboard players remove @s _var00 1
execute at @s[scores={_var00=1..}] run tp @s ~ ~1 ~
execute at @s[scores={_var00=1..}] run function build:lawn/coral_level
execute if entity @s run scoreboard players reset @s _var05
execute if entity @s run scoreboard players reset @a _var05
execute if entity @s run scoreboard players set @s _var01 4
execute if entity @s run execute store result score @s _var05 run data get entity @s Owner[1]
execute if entity @s run execute as @a store result score @s _var05 run data get entity @s UUID[1]
execute if entity @s run execute at @a if score @p _var05 = @s _var05 run tag @p remove fbheadshot
execute if entity @s[scores={dr=..250}] run execute at @a if score @p _var05 = @s _var05 run tag @p add fbheadshot
execute if entity @s run execute at @a if score @p _var05 = @s _var05 run tag @p add fbrange
execute if entity @s run execute store result score @s _var04 run data get entity @s UUID[1]
execute if entity @s run scoreboard players operation @s _var04 %= @s _var01

execute if entity @s[scores={dr=251..2000}] run title @a[tag=fbrange] actionbar {"text":"On Target","color":"aqua"}
execute if entity @s[scores={_var04=0..1}] if entity @s[scores={dr=101..250}] run title @a[tag=fbheadshot] actionbar {"text":"Headshot!!!","color":"green"}
execute if entity @s[scores={_var04=2}] if entity @s[scores={dr=101..250}] run title @a[tag=fbheadshot] actionbar {"text":"Nice Shot!!!","color":"green"}
execute if entity @s[scores={_var04=3}] if entity @s[scores={dr=101..250}] run title @a[tag=fbheadshot] actionbar {"text":"Good Aim!!!","color":"green"}
execute if entity @s[scores={dr=..100}] if entity @s[scores={_var04=0..1}] run title @a[tag=fbheadshot] actionbar {"text":"Golden Headshot, You Go Berserk!!!","color":"gold"}
execute if entity @s[scores={dr=..100}] if entity @s[scores={_var04=2}] run title @a[tag=fbheadshot] actionbar {"text":"Perfect, You Go Berserk!!!","color":"gold"}
execute if entity @s[scores={dr=..100}] if entity @s[scores={_var04=3}] run title @a[tag=fbheadshot] actionbar {"text":"Awesome, You Go Berserk!!!","color":"gold"}
execute if entity @s[scores={dr=..100}] run effect give @a[tag=fbheadshot] haste 5 10 false
execute if entity @s[scores={dr=..100}] run effect give @a[tag=fbheadshot] resistance 1 10 false
execute if entity @s[scores={dr=..100}] run effect give @a[tag=fbheadshot] strength 3 2 false
execute if entity @s[tag=fbefnud,scores={dr=101..250}] run data merge entity @s {Particle:"block air",Radius:0.5,RadiusOnUse:0.0,RadiusPerTick:0,Duration:9,ReapplicationDelay:0,Effects:[{Id:7,Amplifier:2,Duration:1}]}
execute if entity @s[tag=fbefud,scores={dr=101..250}] run data merge entity @s {Particle:"block air",Radius:0.5,RadiusOnUse:0.0,RadiusPerTick:0,Duration:9,ReapplicationDelay:0,Effects:[{Id:6,Amplifier:2,Duration:1}]}
execute if entity @s[tag=fbefnud,scores={dr=..100}] run data merge entity @s {Particle:"block air",Radius:0.5,RadiusOnUse:0.0,RadiusPerTick:0,Duration:9,ReapplicationDelay:0,Effects:[{Id:7,Amplifier:10,Duration:1}]}
execute if entity @s[tag=fbefud,scores={dr=..100}] run data merge entity @s {Particle:"block air",Radius:0.5,RadiusOnUse:0.0,RadiusPerTick:0,Duration:9,ReapplicationDelay:0,Effects:[{Id:6,Amplifier:10,Duration:1}]}
tag @a[tag=fbrange] remove fbrange
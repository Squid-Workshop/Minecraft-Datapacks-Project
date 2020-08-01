#tag @e[tag=detecting] add grenade_effect
#scoreboard players add @e[tag=detecting] life 100
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["grenade_effect"],Duration:2000}
tag @s remove grenade_effect
scoreboard players add @e[tag=grenade_effect] life 100
kill @s

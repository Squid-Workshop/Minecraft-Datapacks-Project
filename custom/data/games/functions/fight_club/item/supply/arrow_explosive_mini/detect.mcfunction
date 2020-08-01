#tag @e[tag=detecting] add grenade_effect
#scoreboard players add @e[tag=detecting] life 100
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mini_explosion"],Duration:2000}
tag @s remove mini_explosion
scoreboard players add @e[tag=mini_explosiont] life 100
kill @s

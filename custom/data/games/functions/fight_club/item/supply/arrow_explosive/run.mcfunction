
execute if entity @s[nbt={inGround:1b}] run scoreboard players add @s life 100
#execute if entity @e[type=!#games:undetected,distance=..2] unless score @s UID = @e[type=!#games:undetected,limit=1,sort=nearest] UID run scoreboard players add @s life 100
tag @e[type=!#games:undetected,distance=..3] add detecting
execute if entity @e[tag=detecting] unless score @s UID = @e[tag=detecting,limit=1,sort=nearest] UID run function games:fight_club/item/supply/arrow_explode/detect
tag @e[tag=detecting] remove detecting
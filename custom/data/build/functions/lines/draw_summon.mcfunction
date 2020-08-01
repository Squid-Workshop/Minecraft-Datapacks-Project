execute as @e[tag=orig] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"line\"",NoGravity:1b,Tags:["draw"],Invisible:1b,CustomNameVisible:1b}
execute as @e[tag=draw] at @s run tp @s ~ ~ ~ facing entity @e[tag=dest,limit=1,sort=nearest]
scoreboard players operation @e[tag=draw,limit=1,sort=nearest] move = @e[tag=orig,limit=1,sort=nearest] move

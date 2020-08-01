execute as @e[tag=orig,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[tag=dest,sort=nearest,limit=1]

execute as @e[tag=orig,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["dist"],NoGravity:1b}

execute as @e[tag=orig] at @s run tp @e[tag=dist,distance=0] ~ ~ ~ facing entity @e[tag=dest,limit=1,sort=nearest]
tag @e[tag=orig] add sdist
tag @e[tag=dist] add sdist
tag @e[tag=dest] add sdistend
scoreboard players set @e[tag=orig,limit=1,sort=nearest] chosen 30
execute as @e[scores={chosen=30}] at @s run scoreboard players set @e[tag=dist,distance=0] chosen 30


scoreboard players set @e[tag=dest,limit=1,sort=nearest] chosen 33
function build:lines/dxdydz1

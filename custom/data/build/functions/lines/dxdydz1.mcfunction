execute as @e[tag=orig] at @s run execute store result score @s x run data get entity @s Pos[0]
execute as @e[tag=orig] at @s run execute store result score @s y run data get entity @s Pos[1]
execute as @e[tag=orig] at @s run execute store result score @s z run data get entity @s Pos[2]

execute as @e[tag=dest] at @s run execute store result score @s x run data get entity @s Pos[0]
execute as @e[tag=dest] at @s run execute store result score @s y run data get entity @s Pos[1]
execute as @e[tag=dest] at @s run execute store result score @s z run data get entity @s Pos[2]

execute as @e[tag=dest] run scoreboard players operation @s x -= @e[tag=orig,limit=1] x
execute as @e[tag=dest] run scoreboard players operation @s y -= @e[tag=orig,limit=1] y
execute as @e[tag=dest] run scoreboard players operation @s z -= @e[tag=orig,limit=1] z


scoreboard players set @e[tag=dest] _var01 0
execute as @e[tag=dest] if entity @s[scores={x=..0}] run scoreboard players operation @s _var01 -= @s x
execute as @e[tag=dest] if entity @s[scores={x=..0}] run scoreboard players operation @s x = @s _var01


scoreboard players set @e[tag=dest] _var01 0
execute as @e[tag=dest] if entity @s[scores={y=..0}] run scoreboard players operation @s _var01 -= @s y
execute as @e[tag=dest] if entity @s[scores={y=..0}] run scoreboard players operation @s y = @s _var01

scoreboard players set @e[tag=dest] _var01 0
execute as @e[tag=dest] if entity @s[scores={z=..0}] run scoreboard players operation @s _var01 -= @s z
execute as @e[tag=dest] if entity @s[scores={z=..0}] run scoreboard players operation @s z = @s _var01


execute as @e[tag=orig] at @s run scoreboard players operation @s x = @e[tag=sdistend,limit=1] x
execute as @e[tag=orig] at @s run scoreboard players operation @s y = @e[tag=sdistend,limit=1] y
execute as @e[tag=orig] at @s run scoreboard players operation @s z = @e[tag=sdistend,limit=1] z



scoreboard players set @e[tag=orig] _var00 0

execute as @e[tag=orig] at @s run execute if score @s _var00 < @e[tag=sdistend,limit=1] x run scoreboard players operation @s _var00 = @e[tag=sdistend,limit=1] x
execute as @e[tag=orig] at @s run execute if score @s _var00 < @e[tag=sdistend,limit=1] y run scoreboard players operation @s _var00 = @e[tag=sdistend,limit=1] y
execute as @e[tag=orig] at @s run execute if score @s _var00 < @e[tag=sdistend,limit=1] z run scoreboard players operation @s _var00 = @e[tag=sdistend,limit=1] z
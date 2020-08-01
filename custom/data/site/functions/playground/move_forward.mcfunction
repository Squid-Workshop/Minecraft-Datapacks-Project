#walk
execute as @s at @s run tp @s ^ ^ ^0.15

#add walkSound

execute as @s at @s run scoreboard players add @s walkSound 1

#clear walkSound
execute as @e[tag=matrix,scores={walkSound=10..}] run scoreboard players set @s walkSound 0

#play walkSound
execute as @e[tag=matrix,scores={walkSound=1}] at @s run playsound minecraft:block.wool.place player @a ~ ~ ~ 1 0.8


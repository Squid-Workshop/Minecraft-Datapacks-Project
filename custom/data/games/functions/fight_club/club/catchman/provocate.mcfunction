scoreboard players add rand accu 2
scoreboard players operation rand V = rand accu
scoreboard players operation rand V %= 2 C

execute if score rand V matches 0 as @a[tag=ingame,tag=runner] at @s run playsound minecraft:entity.evoker.prepare_wololo ambient @a ~ ~ ~ 2 1.7 0.5
execute if score rand V matches 1 as @a[tag=ingame,tag=runner] at @s run playsound minecraft:entity.shulker.ambient ambient @a ~ ~ ~ 2 1.2 0.5

#recursion
execute if score club gameon matches 1 if score club pvpmode matches 2 run schedule function games:fight_club/club/catchman/provocate 20s
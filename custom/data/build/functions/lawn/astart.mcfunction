execute at @s run fill ~ ~ ~ ~ ~ ~ air replace #small_flowers
execute at @s run fill ~ ~ ~ ~ ~ ~ air replace sweet_berry_bush
execute at @s run fill ~ ~ ~ ~ ~ ~ air replace fern
execute at @s run fill ~ ~ ~ ~ ~ ~ air replace dead_bush
execute at @s run fill ~ ~ ~ ~ ~ ~ air replace grass

execute at @s unless block ~ ~ ~ air run kill @s
execute at @s if block ~ ~ ~ #leaves run kill @s
execute at @s if block ~ ~ ~ #logs run kill @s
execute at @s if block ~ ~-1 ~ air run kill @s
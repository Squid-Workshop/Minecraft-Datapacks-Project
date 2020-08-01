scoreboard players operation rand V = rand accu
#scoreboard players add rand accu 23
scoreboard players operation rand V %= 20 C

execute if score rand V matches 0 run tp @s ~ ~ ~ facing ^-0.1 ^0.1 ^1
execute if score rand V matches 1 run tp @s ~ ~ ~ facing ^0.2 ^-0.2 ^-1
execute if score rand V matches 2 run tp @s ~ ~ ~ facing ^-0.3 ^0.1 ^1
execute if score rand V matches 3 run tp @s ~ ~ ~ facing ^0.4 ^0.12 ^-1
execute if score rand V matches 4 run tp @s ~ ~ ~ facing ^-0.5 ^-0.2 ^1
execute if score rand V matches 5 run tp @s ~ ~ ~ facing ^0.5 ^-0.3 ^-1
execute if score rand V matches 6 run tp @s ~ ~ ~ facing ^0.4 ^0.1 ^1
execute if score rand V matches 7 run tp @s ~ ~ ~ facing ^-0.3 ^0.10 ^1
execute if score rand V matches 8 run tp @s ~ ~ ~ facing ^0.8 ^-0.25 ^-1
execute if score rand V matches 9 run tp @s ~ ~ ~ facing ^1 ^ ^1
execute if score rand V matches 10 run tp @s ~ ~ ~ facing ^-0.9 ^1.2 ^-1
execute if score rand V matches 11 run tp @s ~ ~ ~ facing ^1.2 ^-2.3 ^-1
execute if score rand V matches 12 run tp @s ~ ~ ~ facing ^-1.3 ^3.4 ^1
execute if score rand V matches 13 run tp @s ~ ~ ~ facing ^1.4 ^4.3 ^1
execute if score rand V matches 14 run tp @s ~ ~ ~ facing ^-1.5 ^-0.2 ^1
execute if score rand V matches 15 run tp @s ~ ~ ~ facing ^1.5 ^-0.3 ^-1
execute if score rand V matches 16 run tp @s ~ ~ ~ facing ^1.4 ^0.1 ^1
execute if score rand V matches 17 run tp @s ~ ~ ~ facing ^-1.3 ^0.10 ^-1
execute if score rand V matches 18 run tp @s ~ ~ ~ facing ^1.8 ^-0.25 ^-1
execute if score rand V matches 19 run tp @s ~ ~ ~ facing ^100 ^ ^1
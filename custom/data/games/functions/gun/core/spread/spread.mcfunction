#rand
#execute if entity @s[tag=!offset] run scoreboard players add rand accu 11
#execute if entity @s[tag=!offset] run scoreboard players operation rand V = rand accu
execute if entity @s[tag=!offset] run function games:gun/core/util/random
execute if entity @s[tag=!offset] run scoreboard players operation rand V %= 10 C

#execute if entity @s[tag=!offset] run say no

#execute if score rand V matches 0 run say 0
#execute if score rand V matches 1 run say 1
#execute if score rand V matches 2 run say 2
#execute if score rand V matches 3 run say 3
#execute if score rand V matches 4 run say 4
#execute if score rand V matches 5 run say 5
#execute if score rand V matches 6 run say 6
#execute if score rand V matches 7 run say 7
#execute if score rand V matches 8 run say 8
#execute if score rand V matches 9 run say 9



execute if score @s spread matches 1 run function games:gun/core/spread/spread1
execute if score @s spread matches 2 run function games:gun/core/spread/spread2
execute if score @s spread matches 3 run function games:gun/core/spread/spread3
execute if score @s spread matches 4 run function games:gun/core/spread/spread4
execute if score @s spread matches 5 run function games:gun/core/spread/spread5
execute if score @s spread matches 6 run function games:gun/core/spread/spread6

execute if entity @s[tag=!grenade] run scoreboard players set @s spread 0

tag @s[tag=offset] remove offset


##################################ninja##################################
#execute if entity @s[tag=shift_bool] run effect give @s minecraft:blindness 2 10 true

#invisibility
execute if entity @s[tag=shift_bool] run effect give @s minecraft:invisibility 2 2 true


#speed
execute if entity @s[tag=shift_bool] run scoreboard players set @s sneakrun 1
execute if entity @s[tag=shift_bool] run effect give @s minecraft:speed 1 12 true
execute if entity @s[tag=!shift_bool,scores={sneakrun=1..}] run effect clear @s minecraft:speed
execute if entity @s[tag=!shift_bool,scores={sneakrun=1..}] run scoreboard players set @s sneakrun 0

#armor off
execute if entity @s[tag=shift_bool,nbt={SelectedItem:{tag:{invisibility:1b}}}] run function games:fight_club/character/ninja/armor_off

#close to enemy particle
function games:fight_club/team/tag
execute at @s if entity @a[tag=enemy,distance=..5] run particle minecraft:portal ~ ~ ~ 0.3 1 0.3 0.0001 10
function games:fight_club/team/untag

#fast climb
#execute if entity @s[tag=shift_bool,nbt=!{SelectedItem:{}}] at @s unless block ^ ^1.5 ^0.1 minecraft:air run effect give @s minecraft:levitation 1 4 true
#########################################################################
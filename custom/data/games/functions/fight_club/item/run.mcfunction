#jetpack
execute as @a[tag=shift_bool,nbt={SelectedItem:{tag:{jetpack:1b}}}] at @s run function games:fight_club/item/equipment/jetpack/run
execute as @a[tag=shift_bool,scores={lever=160},nbt={SelectedItem:{tag:{jetpack:1b}}}] at @s run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 2
execute as @a[tag=!shift_bool,scores={lever=1..}] at @s run scoreboard players remove @s lever 1

#shield
function games:fight_club/item/equipment/offhand/shield_dragon/run
execute as @s[tag=shield] at @s unless entity @a[tag=shield_bool,distance=..1] run kill @s

#light arrow
execute as @e[type=minecraft:arrow,nbt={Color:16449336},tag=!arrow] at @s run function games:fight_club/item/supply/arrow_light/init
execute as @e[tag=light,tag=arrow] at @s run function games:fight_club/item/supply/arrow_light/run

#grenade arrow
execute as @e[type=minecraft:arrow,nbt={Color:1274392},tag=!arrow] at @s run function games:fight_club/item/supply/arrow_explosive/init
execute as @e[tag=grenade_effect,tag=arrow] at @s run function games:fight_club/item/supply/arrow_explosive/run

#mini explosive arrow
execute as @e[type=minecraft:arrow,nbt={Color:11080735},tag=!arrow] at @s run function games:fight_club/item/supply/arrow_explosive_mini/init
execute as @e[tag=mini_explosion,tag=arrow] at @s run function games:fight_club/item/supply/arrow_explosive_mini/run
execute as @e[tag=mini_explosion,scores={life=50..}] at @s run function games:fight_club/item/supply/arrow_explosive_mini/effect

#light bow
execute as @a[tag=bow_bool,nbt={SelectedItem:{tag:{light:1b}}}] at @s as @e[type=minecraft:arrow,tag=!light,limit=1,sort=nearest] at @s run function games:fight_club/item/supply/arrow_light/init
#light crossbow
execute as @a[tag=crossbow_bool,nbt={SelectedItem:{tag:{light:1b}}}] at @s as @e[type=minecraft:arrow,tag=!light,limit=1,sort=nearest] at @s run function games:fight_club/item/supply/arrow_light/init

#instashift
effect give @a[tag=pearl_bool] minecraft:regeneration 3 2
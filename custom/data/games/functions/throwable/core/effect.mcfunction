execute if entity @s[nbt={OnGround:0b}] run tag @s add air

execute if entity @s[tag=air,nbt={OnGround:1b},tag=!turret_effect] run playsound minecraft:gun/thrower/he_bounce-1 player @a ~ ~ ~ 2 1

execute if entity @s[tag=air,nbt={OnGround:1b},tag=turret_effect] run playsound minecraft:block.anvil.place player @a ~ ~ ~ 2 1

execute if entity @s[tag=air,nbt={OnGround:1b},tag=grenade] run scoreboard players add @s life 20

execute if entity @s[tag=air,nbt={OnGround:1b}] run tag @s remove air

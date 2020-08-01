summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:2}},PickupDelay:-1s,Tags:["molotov_effect","effect"],Invulnerable:1b,Fire:100s}

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] life = @s life

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:gun/thrower/he_bounce-1 player @a ~ ~ ~ 2 1

particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.1 20 force

particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0.0001 5 force

kill @s
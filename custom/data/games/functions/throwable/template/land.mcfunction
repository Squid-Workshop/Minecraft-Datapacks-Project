#summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}},PickupDelay:-1s,Tags:["template_effect","effect"]}

summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}},PickupDelay:1s,Tags:["template_effect","effect"]}

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] life = @s life

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:gun/thrower/he_bounce-1 player @a ~ ~ ~ 2 1

say template hit

kill @s
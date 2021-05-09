

#execute as @e[distance=..9] run scoreboard players add @s damage 11

execute as @e[distance=..3] run scoreboard players add @s damage 21

execute as @e[distance=..3] run scoreboard players operation @s hit_by = @e[limit=1,sort=nearest,tag=effect] UID

execute as @e[distance=..3] run tag @s add grenaded

tp @s ~ ~ ~ facing entity @p

function games:throwable/grenade/fire

function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure
function games:throwable/grenade/fire_procedure









#in water
execute if block ~ ~ ~ minecraft:water run tag @s add water
execute if entity @s[tag=water] run particle minecraft:splash ~ ~2 ~ 0.6 1 0.6 1 1000 force
execute if entity @s[tag=water] run playsound minecraft:gun/thrower/water_explo player @a ~ ~ ~ 4 1.5
execute if entity @s[tag=water] run tag @e[tag=fired_b,distance=..0.5] add water
#in air
#execute if entity @s[tag=water] run particle minecraft:lava ~ ~1 ~ 3 1 3 1 30 force
execute if entity @s[tag=!water] run particle minecraft:lava ~ ~1 ~ 3 1 3 1 100 force
execute if entity @s[tag=!water] run playsound minecraft:gun/thrower/c4_explo player @a ~ ~ ~ 4 1.5 0.1
execute if entity @s[tag=!water] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 3 force
#playsound minecraft:gun/thrower/explode player @a ~ ~ ~ 4 1



kill @e[tag=display,limit=1,sort=nearest]
tag @s remove grenade_effect
kill @s[type=!player]
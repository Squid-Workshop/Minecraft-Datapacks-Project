

#execute as @e[distance=..9] run scoreboard players add @s damage 11

#execute as @e[distance=..3] run scoreboard players add @s damage 21

#execute as @e[distance=..3] run scoreboard players operation @s hit_by = @e[limit=1,sort=nearest,tag=effect] UID

#execute as @e[distance=..3] run tag @s add exploded

tp @s ~ ~ ~ facing entity @p

function games:throwable/turret/fire

function games:throwable/turret/fire_procedure
function games:throwable/turret/fire_procedure
function games:throwable/turret/fire_procedure
function games:throwable/turret/fire_procedure
function games:throwable/turret/fire_procedure
function games:throwable/turret/fire_procedure
function games:throwable/turret/fire_procedure
function games:throwable/turret/fire_procedure
function games:throwable/turret/fire_procedure






particle minecraft:explosion ~ ~1 ~ 1 1 1 1 5 force

particle minecraft:lava ~ ~1 ~ 3 1 3 1 30 force

playsound minecraft:gun/thrower/explode player @a ~ ~ ~ 4 1

kill @s
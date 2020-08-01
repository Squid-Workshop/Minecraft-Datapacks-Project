#summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}},PickupDelay:1s,Tags:["template_effect","effect"]}

# summon a grid wall of clouds
execute rotated as @p run summon minecraft:area_effect_cloud ^-2 ^ ^ {Duration:120,Tags:["xirang_effect"]}
execute rotated as @p run summon minecraft:area_effect_cloud ^-1 ^ ^ {Duration:120,Tags:["xirang_effect"]}
execute rotated as @p run summon minecraft:area_effect_cloud ^0 ^ ^ {Duration:120,Tags:["xirang_effect"]}
execute rotated as @p run summon minecraft:area_effect_cloud ^1 ^ ^ {Duration:120,Tags:["xirang_effect"]}
execute rotated as @p run summon minecraft:area_effect_cloud ^2 ^ ^ {Duration:120,Tags:["xirang_effect"]}

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] life = @s life

scoreboard players operation @e[tag=effect,limit=1,sort=nearest] UID = @s UID

playsound minecraft:block.sand.step player @a ~ ~ ~ 1 1

kill @s
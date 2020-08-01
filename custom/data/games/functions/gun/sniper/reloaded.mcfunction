

#ammo score change
scoreboard players operation @s ammo += @s b_sniper

execute if entity @s[scores={ammo=5..}] run tag @s add full

execute if entity @s[tag=!full] run scoreboard players operation @s b_sniper = @s ammo

execute if entity @s[tag=!full] run scoreboard players set @s ammo 0

execute if entity @s[tag=full] run scoreboard players set @s b_sniper 5

execute if entity @s[tag=full] run scoreboard players remove @s ammo 5

tag @s remove full
#

scoreboard players set @s reload 0

replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{sniper:1b}}]}] weapon.offhand air

function games:gun/get/sniper


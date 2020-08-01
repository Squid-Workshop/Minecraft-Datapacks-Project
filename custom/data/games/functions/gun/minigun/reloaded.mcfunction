

#ammo score change
scoreboard players operation @s ammo += @s b_mini

execute if entity @s[scores={ammo=50..}] run tag @s add full

execute if entity @s[tag=!full] run scoreboard players operation @s b_mini = @s ammo

execute if entity @s[tag=!full] run scoreboard players set @s ammo 0

execute if entity @s[tag=full] run scoreboard players set @s b_mini 500

execute if entity @s[tag=full] run scoreboard players remove @s ammo 500

tag @s remove full
#

scoreboard players set @s reload 0

replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{minigun:1b,silenced:0}}]}] weapon.offhand air

function games:gun/get/minigun


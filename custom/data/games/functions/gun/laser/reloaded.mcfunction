

#ammo score change
scoreboard players operation @s ammo += @s b_energy

execute if entity @s[scores={ammo=50..}] run tag @s add full

execute if entity @s[tag=!full] run scoreboard players operation @s b_energy = @s ammo

execute if entity @s[tag=!full] run scoreboard players set @s ammo 0

execute if entity @s[tag=full] run scoreboard players set @s b_energy 50

execute if entity @s[tag=full] run scoreboard players remove @s ammo 50

tag @s remove full
#

scoreboard players set @s reload 0

replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{laser:1b}}]}] weapon.offhand air

function games:gun/get/laser


effect give @s minecraft:slowness 1 10 true
scoreboard players add @s aim 1
execute if score @s aim matches 2 run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{CustomModelData:17,display:{Name:"{\"text\":\"scope\"}"},scope:1b}

execute if score @s aim matches 2 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:20,display:{Name:"{\"text\":\"laser rifle aiming\"}"},gun:1b,laser:1b,silenced:0}

execute if score @s aim matches 2 run playsound minecraft:gun/awp/zoom player @a ~ ~ ~ 1 0.8

#remove recoil
execute as @a[scores={recoil=12..}] run scoreboard players remove @s recoil 1
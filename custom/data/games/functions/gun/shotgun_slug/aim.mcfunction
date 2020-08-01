effect give @s minecraft:slowness 1 0 true
scoreboard players add @s aim 1
execute if score @s aim matches 2 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:8,display:{Name:"{\"text\":\"double barrel shotgun - slug\"}"},gun:1b,shotgun:1b,slug:1b}

#remove recoil
execute as @a[scores={recoil=12..}] run scoreboard players remove @s recoil 1
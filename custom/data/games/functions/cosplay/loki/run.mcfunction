execute as @p at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={move=0..}] run replaceitem entity @p weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:3,display:{Name:"\"Scepter\""}}

execute as @p at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] run scoreboard players add @s[scores={move=..-1}] move 1

execute as @p at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={move=1..}] run execute if entity @s run function games:wp_1/sues



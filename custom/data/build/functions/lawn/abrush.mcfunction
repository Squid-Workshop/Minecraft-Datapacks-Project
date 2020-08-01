execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:lawnmaker,lvl:1}]}}},scores={move=2..}] at @s run scoreboard players set @s move 0
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:lawnmaker,lvl:1}]}}},scores={move=1}] at @s run tag @s add nobrush
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:lawnmaker,lvl:1}]}}},tag=nobrush] at @s run function build:lawn/runa
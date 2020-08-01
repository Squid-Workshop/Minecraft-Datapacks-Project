execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}},scores={move=5..}] run scoreboard players set @s move 0
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}},scores={move=2}] run tag @s add nopin
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}},scores={move=4}] run tag @s add nopin
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}},tag=nopin] at @s run function build:lines/pin
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}},scores={move=1}] run kill @e[tag=dest]
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}},scores={move=1}] run kill @e[tag=orig]
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}},scores={move=1}] run kill @e[tag=draw]
execute as @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}},scores={move=1}] run kill @e[tag=dist]
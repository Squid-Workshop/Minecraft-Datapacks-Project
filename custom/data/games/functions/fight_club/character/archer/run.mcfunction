execute as @a[tag=shift_bool,nbt={SelectedItem:{id:"minecraft:bow"}},scores={climb=0}] run effect give @s minecraft:slowness 1 10 true
execute as @a[tag=shift_bool,nbt={SelectedItem:{id:"minecraft:bow"}}] run scoreboard players add @s aim 1
execute as @a[tag=!shift_bool,nbt={SelectedItem:{id:"minecraft:bow"}},scores={aim=1..}] run effect clear @s minecraft:slowness

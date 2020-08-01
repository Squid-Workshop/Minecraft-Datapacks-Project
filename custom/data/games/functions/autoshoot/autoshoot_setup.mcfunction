scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy

setblock ~ ~ ~ minecraft:repeating_command_block{Command:"execute as @a[nbt={SelectedItem:{id:\"minecraft:bow\",Count:1b}}] at @s run function games:wp_2/autoshoot"}
setblock ~ ~1 ~ lever[powered=true,face=floor]
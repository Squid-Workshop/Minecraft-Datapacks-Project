fill -1355 33 -1687 -1360 28 -1692 air replace minecraft:command_block
fill -1355 33 -1687 -1360 28 -1692 air replace minecraft:chain_command_block
fill -1355 33 -1687 -1360 28 -1692 air replace minecraft:repeating_command_block
setblock -1358 32 -1689 minecraft:observer[facing=west]
setblock -1357 32 -1689 air
setblock -1357 32 -1689 minecraft:command_block[facing=up]{Command:"setblock -1358 32 -1690 minecraft:command_block[facing=up]{Command:\"function music:class_end/little_bits/5\"}"}
setblock -1359 31 -1692 minecraft:repeating_command_block[facing=down]{Command:"execute at @a run playsound minecraft:block.note_block.bell player @p ~ ~ ~ 1 0.890899 1"}

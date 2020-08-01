fill -1355 33 -1687 -1360 28 -1692 air replace minecraft:command_block
fill -1355 33 -1687 -1360 28 -1692 air replace minecraft:chain_command_block
setblock -1358 32 -1689 minecraft:observer[facing=west]
setblock -1357 32 -1689 air
setblock -1357 32 -1689 minecraft:command_block[facing=up]{Command:"setblock -1358 32 -1690 minecraft:command_block[facing=up]{Command:\"function music:class_start/little_bits/24\"}"}
setblock -1359 31 -1692 minecraft:command_block[facing=down]{Command:"execute at @a run playsound minecraft:block.note_block.bell player @p ~ ~ ~ 1 0.707107 1"}
setblock -1360 31 -1691 minecraft:command_block[facing=down]{Command:"execute at @a run playsound minecraft:block.note_block.harp player @p ~ ~ ~ 1 0.707107 1"}
setblock -1360 31 -1688 minecraft:command_block[facing=down]{Command:"execute at @a run playsound minecraft:block.note_block.bell player @p ~ ~ ~ 1 0.529732 1"}
setblock -1359 31 -1687 minecraft:command_block[facing=down]{Command:"execute at @a run playsound minecraft:block.note_block.harp player @p ~ ~ ~ 1 0.890899 1"}
setblock -1359 30 -1687 minecraft:chain_command_block[facing=down]{auto:1b,Command:"execute at @a run playsound minecraft:block.note_block.harp player @p ~ ~ ~ 1 1.059463 1"}
setblock -1356 31 -1687 minecraft:command_block[facing=down]{Command:"execute at @a run playsound minecraft:block.note_block.bell player @p ~ ~ ~ 1 0.890899 1"}
setblock -1355 31 -1691 minecraft:command_block[facing=down]{Command:"execute at @a run playsound minecraft:block.note_block.bell player @p ~ ~ ~ 1 0.707107 1"}
setblock -1356 31 -1692 minecraft:command_block[facing=down]{Command:"execute at @a run playsound minecraft:block.note_block.harp player @p ~ ~ ~ 1 0.890899 1"}
setblock -1356 30 -1692 minecraft:chain_command_block[facing=down]{auto:1b,Command:"execute at @a run playsound minecraft:block.note_block.harp player @p ~ ~ ~ 1 1.059463 1"}

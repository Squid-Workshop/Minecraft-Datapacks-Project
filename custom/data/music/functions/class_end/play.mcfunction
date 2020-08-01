fill -1355 33 -1687 -1360 28 -1692 air
fill -1356 31 -1688 -1359 32 -1691 minecraft:stone
fill -1356 32 -1688 -1359 32 -1691 minecraft:redstone_wire
setblock -1357 32 -1691 minecraft:repeater[delay=1,facing=east]
setblock -1358 32 -1691 minecraft:repeater[delay=1,facing=east]
setblock -1359 32 -1690 minecraft:repeater[delay=1,facing=north]
setblock -1359 32 -1689 minecraft:repeater[delay=1,facing=north]
setblock -1358 32 -1688 minecraft:repeater[delay=1,facing=west]
setblock -1357 32 -1688 minecraft:repeater[delay=1,facing=west]
setblock -1356 32 -1689 minecraft:repeater[delay=1,facing=south]
setblock -1356 32 -1690 minecraft:repeater[delay=1,facing=south]
fill -1357 32 -1689 -1358 32 -1690 air
kill @e[type=item]
setblock -1359 31 -1691 minecraft:redstone_block
setblock -1359 31 -1691 minecraft:stone
setblock -1357 32 -1690 minecraft:observer[facing=east]
setblock -1358 32 -1690 minecraft:command_block[facing=up]{Command:"function music:class_end/little_bits/1"}
    
kill @e[name=shitlight2]

clone -1167 41 -1648 -1099 41 -1623 -1167 40 -1648 filtered minecraft:redstone_lamp force

fill -1167 40 -1648 -1099 40 -1623 minecraft:command_block{Command:"/summon armor_stand ~ 41 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:\"\\\"shitlight2\\\"\"}"} replace minecraft:redstone_lamp

fill -1167 41 -1648 -1099 41 -1623 minecraft:redstone_block replace minecraft:redstone_lamp

##########################################################################
#fill -1142 32 -1696 -1142 32 -1699 stone
#setblock -1142 33 -1697 minecraft:repeater[facing=south,delay=1]
#setblock -1142 33 -1698 minecraft:command_block{Command:"/fill -1167 40 -1648 -1099 40 -1623 minecraft:air replace minecraft:command_block"}
#setblock -1142 33 -1699 minecraft:command_block{Command:"/fill -1142 33 -1699 -1142 32 -1696 air"}
#setblock -1142 33 -1696 redstone_block
##########################################################################

fill -1135 254 -1647 -1135 254 -1650 stone
setblock -1135 255 -1648 minecraft:repeater[facing=south,delay=1]

setblock -1135 255 -1649 minecraft:command_block{Command:"/fill -1167 40 -1648 -1099 40 -1623 minecraft:air replace minecraft:command_block"}

setblock -1135 255 -1650 minecraft:command_block{Command:"/fill -1135 254 -1647 -1135 255 -1650 air"}
setblock -1135 255 -1647 redstone_block

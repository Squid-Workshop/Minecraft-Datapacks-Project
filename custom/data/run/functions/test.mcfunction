#setblock -1128 32 -1685 minecraft:structure_block[mode=save]{name:"light",posX:0,posY:0,posZ:1,sizeX:1,sizeY:1,sizeZ:1,rotation:"NONE",mirror:"NONE",mode:"SAVE"} replace

#setblock -1125 32 -1685 minecraft:structure_block[mode=load]{name:"light",posX:0,posY:0,posZ:1,sizeX:1,sizeY:1,sizeZ:1,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace

#setblock -1128 32 -1686 minecraft:redstone_block
#setblock -1128 32 -1686 minecraft:air

#setblock -1125 32 -1686 minecraft:redstone_block
#setblock -1125 32 -1686 minecraft:air

#setblock -1128 32 -1685 minecraft:air
#setblock -1125 32 -1685 minecraft:air


#setblock -1137 32 -1678 minecraft:redstone_block

#setblock -1137 32 -1678 minecraft:air

#execute if block -1137 32 -1676 minecraft:redstone_lamp[lit=true] run say hello

tp @p 0 0 0
execute as YMS2001 at @s run summon item ~ ~1 ~ {Item:{id:stone_button,Count:1b},PickupDelay:0}
execute as YMS2001 at @s run data modify entity @e[type=item,limit=1,sort=nearest] Item set from entity @e[tag=sion,sort=nearest,limit=1,tag=illutemp] HandItems[0]
execute as YMS2001 at @s run summon item ~ ~1 ~ {Item:{id:oak_button,Count:1b},PickupDelay:0}
execute as YMS2001 at @s run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_button",Count:1b}}] Item set from entity @e[tag=sion,sort=nearest,limit=1,tag=illutemp] HandItems[1]
replaceitem entity YMS2001 armor.head minecraft:stone_button{CustomModelData:1,display:{Name:"\"Loki's Helmet\""},AttributeModifiers:[{Slot:"head", AttributeName:"generic.armor", Name:"generic.armor", Amount:10.0, Operation:0, UUIDMost:-475293965773951L, UUIDLeast:-6114216658131554L}]}
execute as YMS2001 at @s run kill @e[tag=illusion,limit=2,sort=nearest,tag=illutemp]
effect clear YMS2001 invisibility
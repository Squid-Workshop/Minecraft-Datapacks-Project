#/from MGS_2.0.1 gun mod/
replaceitem entity @s[nbt=!{Inventory:[{Slot:103b}]}] armor.head minecraft:stone_button{Tmp:1,HideFlags:2}
data modify storage minecraft:tmp data set from entity @s Inventory[{Slot:103b}]
data modify storage minecraft:tmp data.Slot set value 0b
data modify storage minecraft:tmp data.tag.AttributeModifiers set value [{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDMost:12272,UUIDLeast:110438}]
execute store result storage minecraft:tmp data.tag.AttributeModifiers[{Name:"generic.maxHealth"}].Amount int -1 run scoreboard players get v0 V
data modify block -1314 20 -1781 Items append from storage minecraft:tmp data
loot replace entity @s armor.head 1 mine -1314 20 -1781 minecraft:air{drop_contents:1b}

#sound


tag @s add damaged
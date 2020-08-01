summon armor_stand ~ ~ ~ {Tags:["illusion","illu"],Invisible:1b,Pose:{Head:[0.1f,0.0f,0.0f]},CustomName:"\"YMS2001\"",CustomNameVisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["illusion","sion"],Invisible:1b,Pose:{Head:[0.1f,0.0f,0.0f]},CustomName:"\"YMS2001\"",CustomNameVisible:0b,NoGravity:1b}
tp @e[tag=illusion,distance=0] ~ ~ ~ ~ ~
execute as @e[tag=sion,distance=0,limit=1] at @s run data modify entity @s Pose.Head[0] set from entity YMS2001 Rotation[1]
replaceitem entity @e[tag=illu,distance=0,limit=1] armor.head minecraft:stone_button{CustomModelData:6}
replaceitem entity @e[tag=illu,distance=0,limit=1] weapon.mainhand minecraft:stone_button{CustomModelData:5}
replaceitem entity @e[tag=illu,distance=0,limit=1] weapon.offhand minecraft:stone_button{CustomModelData:4}
replaceitem entity @e[tag=sion,distance=0,limit=1] armor.head minecraft:stone_button{CustomModelData:2}
data modify entity @e[tag=sion,distance=0,limit=1] HandItems[0] set from entity YMS2001 SelectedItem
execute as YMS2001 if entity @s[nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[tag=sion,distance=0,limit=1] HandItems[1] set from entity YMS2001 Inventory[-1]
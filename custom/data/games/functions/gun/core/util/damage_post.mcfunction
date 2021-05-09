#/from MGS_2.0.1 gun mod/
execute if score doImmResp V matches 0 if score enableDamFix V matches 1 run scoreboard players set doImmResp V 2
execute if score doImmResp V matches 2 run gamerule doImmediateRespawn true
#effect give @s minecraft:instant_health 1 0 true
execute store success score v0 V run clear @s minecraft:stone_button{Tmp:1}
execute if score v0 V matches 0 run data modify storage minecraft:tmp data set from entity @s Inventory[{Slot:103b}]
execute if score v0 V matches 0 run data modify storage minecraft:tmp data.Slot set value 0b
execute if score v0 V matches 0 run data modify storage minecraft:tmp data.tag.AttributeModifiers set value ""
execute if score v0 V matches 0 run data modify block -1314 20 -1781 Items append from storage minecraft:tmp data
execute if score v0 V matches 0 run loot replace entity @s armor.head 1 mine -1314 20 -1781 minecraft:air{drop_contents:1b}
tag @s remove damaged
tag @s add damage_buffer
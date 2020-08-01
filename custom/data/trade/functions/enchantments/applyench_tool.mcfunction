execute at @s[tag=apench] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run summon item ~ ~ ~ {Item:{id:stone_button,Count:1b},PickupDelay:0,Tags:["beench"]}
execute at @s[tag=apench] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[type=item,tag=beench,distance=0,limit=1] Item set from entity @s Inventory[-1]
execute at @s[tag=apench] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run data merge entity @e[type=item,tag=beench,distance=0,limit=1] {Item:{tag:{Enchantments:[]}}}
replaceitem entity @s weapon.offhand air

execute if entity @e[tag=beench,limit=1,distance=0] run scoreboard players set @s _var01 4
execute if entity @e[tag=beench,limit=1,distance=0] as @e[tag=beench,limit=1,distance=0] at @s store result score @s _var01 run data get entity @s UUID[3]
execute if entity @e[tag=beench,limit=1,distance=0] as @e[tag=beench,limit=1,distance=0] run scoreboard players operation @s _var01 %= @p _var01
execute if entity @e[tag=beench,limit=1,distance=0] as @e[tag=beench,limit=1,distance=0] run scoreboard players operation @p _var01 = @s _var01
execute if entity @e[tag=beench,limit=1,distance=0] run scoreboard players add @s _var01 1

execute if entity @e[tag=beench,limit=1,distance=0] run function trade:enchantments/run_tool
execute if score @p Balance matches ..299 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 300.. unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run tellraw @p {"text":"Please hold your item in offhand.","color":"gray"}
execute if score @p Balance matches 300.. if entity @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s add apench
execute if score @p Balance matches 300.. if entity @s[nbt={Inventory:[{Slot:-106b}]}] run scoreboard players remove @p Balance 300
execute if entity @s[tag=apench,nbt={Inventory:[{Slot:-106b}]}] run function trade:enchantments/applyench_tool

tag @s remove apench
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:paper",tag:{Enchantments:[{id:id,lvl:2018}],display:{Name:"\"$1\""}}}}] run scoreboard players add @p Balance 1
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:paper",tag:{Enchantments:[{id:id,lvl:2018}],display:{Name:"\"$5\""}}}}] run scoreboard players add @p Balance 5
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:paper",tag:{Enchantments:[{id:id,lvl:2018}],display:{Name:"\"$10\""}}}}] run scoreboard players add @p Balance 10
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:paper",tag:{Enchantments:[{id:id,lvl:2018}],display:{Name:"\"$20\""}}}}] run scoreboard players add @p Balance 20
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:paper",tag:{Enchantments:[{id:id,lvl:2018}],display:{Name:"\"$50\""}}}}] run scoreboard players add @p Balance 50
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:paper",tag:{Enchantments:[{id:id,lvl:2018}],display:{Name:"\"$100\""}}}}] run scoreboard players add @p Balance 100
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:paper"}}]
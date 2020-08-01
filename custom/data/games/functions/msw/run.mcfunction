#####select
#####
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute if entity @e[distance=..0.2,tag=cmn,scores={Count=1..}] run function games:msw/count_show
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute if entity @e[distance=..0.2,tag=cmn,scores={Count=1..}] run scoreboard players set @e[distance=..0.2,tag=cmn] life 3
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute if entity @e[distance=..0.2,tag=cmn,scores={Count=0}] run scoreboard players set @e[distance=..0.2,tag=cmn,scores={Count=0}] life 2
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute if entity @e[distance=..0.2,tag=cmn,scores={life=0..}] run execute at @e[distance=..0.2,tag=cmn,scores={Count=0}] run function games:msw/count_chain

###start

execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute if entity @e[tag=on,scores={chosen=1}] run execute at @e[tag=on,scores={chosen=1}] run scoreboard players set @e[tag=cmn,limit=1,sort=nearest] chosen 1
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute if entity @e[tag=on,scores={chosen=1}] run function games:msw/start
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute if entity @e[tag=on,scores={chosen=1}] run scoreboard players set @e[tag=on,scores={chosen=1}] chosen 0

###lose
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute if entity @e[tag=cmn,distance=..0.2,scores={life=-1}] run function games:msw/end

####win
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"select\""}}}}] run execute unless entity @e[tag=cmn,scores={life=0}] run function games:msw/win

###more select being added
#####

####marker


###left
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"left\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute positioned ~-7 ~ ~ run scoreboard players set @e[tag=cmn,distance=..0.2] chosen 4
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"left\""}}}}] run execute if entity @e[tag=cmn,scores={chosen=4}] run scoreboard players set @e[tag=cmn,scores={chosen=1}] chosen 0
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"left\""}}}}] run execute if entity @e[tag=cmn,scores={chosen=4}] run scoreboard players set @e[tag=cmn,scores={chosen=4}] chosen 1

###right
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"right\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute positioned ~7 ~ ~ run scoreboard players set @e[tag=cmn,distance=..0.2] chosen 4
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"right\""}}}}] run execute if entity @e[tag=cmn,scores={chosen=4}] run scoreboard players set @e[tag=cmn,scores={chosen=1}] chosen 0
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"right\""}}}}] run execute if entity @e[tag=cmn,scores={chosen=4}] run scoreboard players set @e[tag=cmn,scores={chosen=4}] chosen 1

###up
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"up\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute positioned ~ ~ ~-7 run scoreboard players set @e[tag=cmn,distance=..0.2] chosen 4
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"up\""}}}}] run execute if entity @e[tag=cmn,scores={chosen=4}] run scoreboard players set @e[tag=cmn,scores={chosen=1}] chosen 0
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"up\""}}}}] run execute if entity @e[tag=cmn,scores={chosen=4}] run scoreboard players set @e[tag=cmn,scores={chosen=4}] chosen 1

###down
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"down\""}}}}] run execute at @e[tag=cmn,scores={chosen=1}] run execute positioned ~ ~ ~7 run scoreboard players set @e[tag=cmn,distance=..0.2] chosen 4
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"down\""}}}}] run execute if entity @e[tag=cmn,scores={chosen=4}] run scoreboard players set @e[tag=cmn,scores={chosen=1}] chosen 0
execute if entity @p[scores={life=99},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"down\""}}}}] run execute if entity @e[tag=cmn,scores={chosen=4}] run scoreboard players set @e[tag=cmn,scores={chosen=4}] chosen 1

### in the end
execute at @e[tag=on,scores={chosen=1}] run clone -765 4 -1162 -758 4 -1156 ~-4 ~2 ~-3 filtered minecraft:diamond_block
execute at @e[tag=on,scores={chosen=0}] run fill ~-4 ~2 ~-3 ~3 ~2 ~3 air
execute at @e[tag=cmn,scores={chosen=0}] run fill ~-3 ~2 ~-3 ~3 ~2 ~3 air replace diamond_block
execute at @e[tag=cmn,scores={chosen=0}] run fill ~-3 ~2 ~-3 ~3 ~2 ~3 air replace lapis_block
execute at @e[tag=cmn,scores={chosen=1}] run clone -764 6 -1162 -758 6 -1156 ~-3 ~2 ~-3 masked
replaceitem entity @p[scores={life=99}] weapon.offhand minecraft:filled_map{map:160}
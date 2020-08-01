execute if score @s b_energy matches 1 run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 2 0.5

execute if score @s b_energy matches 15 run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 2 0.5

execute if entity @s[scores={b_energy=20..}] run playsound minecraft:entity.creeper.primed player @a ~ ~ ~ 2 1

execute if entity @s[scores={b_energy=23..}] run playsound minecraft:block.note_block.didgeridoo player @a ~ ~ ~ 2 1

execute if entity @s[scores={b_energy=20..}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{CustomModelData:21,display:{Name:"{\"text\":\"laser rifle\"}"},gun:1b,laser:1b,silenced:0}


playsound minecraft:block.beehive.work player @a ~ ~ ~ 1 0.5
execute if entity @s[scores={b_energy=..22}] run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 0.4 1


#explode
execute if entity @s[scores={b_energy=36..}] run playsound minecraft:gun/awp/awp_02 player @a ~ ~ ~ 4 2

execute if entity @s[scores={b_energy=36..}] run clear @s minecraft:carrot_on_a_stick{gun:1b,laser:1b,silenced:0} 1

execute if entity @s[scores={b_energy=36..}] run scoreboard players add @s damage 19

execute if entity @s[scores={b_energy=36..}] run particle minecraft:explosion ^-0.15 ^1 ^1 0.2 0.2 0.2 0.0001 10 force

execute if entity @s[scores={b_energy=36..}] run scoreboard players set @s b_energy 0

execute if entity @s[scores={b_energy=36..}] run scoreboard players operation @s hit_by = @s UID

effect give @s slowness 4 2 true

execute if entity @s[scores={b_energy=..20}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_energy"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]

execute if entity @s[scores={b_energy=21..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_energy"},"color":"red"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]

clear @s minecraft:carrot_on_a_stick{CustomModelData:17,display:{Name:"{\"text\":\"scope\"}"}}

scoreboard players add @s b_energy 1



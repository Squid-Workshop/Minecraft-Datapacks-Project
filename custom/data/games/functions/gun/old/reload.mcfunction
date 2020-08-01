
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{ammo:1b}}}] run scoreboard players add @s reload_count 2

execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{ammo:1b}}}] run clear @s minecraft:melon_seeds 2

execute as @a[scores={shift=0,reload_count=1..},nbt=!{SelectedItem:{tag:{ammo:1b}}}] run give @s minecraft:melon_seeds{display:{Name:"{\"text\":\"Ammo\"}",Lore:["Put the gun in the second slot and hold shift to reload"]},ammo:1b} 1
execute as @a[scores={shift=0,reload_count=1..},nbt=!{SelectedItem:{tag:{ammo:1b}}}] run scoreboard players remove @s reload_count 1

#########smg
execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{smg:1b}}]}] run scoreboard players set @s b_smg 50

execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{smg:1b}}]}] run tellraw @s "reloaded, your smg has 50 ammos now."

############auto_rifle

execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{auto_rifle:1b}}]}] run scoreboard players set @s b_ar 30

execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{auto_rifle:1b}}]}] run tellraw @s "reloaded, your auto rifle has 30 ammos now."

############shotgun
execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{shotgun:1b}}]}] run scoreboard players set @s b_s 2

execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{shotgun:1b}}]}] run tellraw @s "reloaded, your shotgun has 2 ammos now."

############rocket
execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{rocket:1b}}]}] run scoreboard players set @s b_rocket 2

execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",tag:{rocket:1b}}]}] run tellraw @s "reloaded, your rocket launcher is on set."

############minigun

execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,tag:{minigun:1b}}]}] run scoreboard players add @s b_mini 100


execute as @a[scores={reload_count=64},nbt={Inventory:[{Slot:1b,tag:{minigun:1b}}]}] run tellraw @s "reloaded, 100 bullets are loaded to your minigun."

############plasma gun
execute as @a[scores={shift=1..,b_pl=..0},nbt={SelectedItem:{tag:{plasma:1b}}}] run scoreboard players remove @s b_pl 1

#add
execute as @a[scores={shift=0,b_pl=..-1}] run scoreboard players add @s b_pl 1
##limit
execute as @a[scores={b_pl=..-24}] run scoreboard players set @s b_pl 1

#load power

execute as @a[scores={b_pl=-8},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 0.5 1.5

execute as @a[scores={b_pl=-16},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 0.5 1.8

execute as @a[scores={b_pl=-24},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 0.5 2

#################################################3

#execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{ammo:1b}}}] run scoreboard players set @s shift 0
execute as @a[scores={reload_count=64}] run scoreboard players set @s reload_count 0
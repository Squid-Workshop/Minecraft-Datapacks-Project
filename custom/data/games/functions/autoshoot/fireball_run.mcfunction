
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] at @s if entity @e[type=experience_orb,distance=..2] run effect give @s regeneration 2 1 false
execute as @a[scores={life=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] at @s[scores={ammo=1..}] run playsound minecraft:custom.ak47rel ambient @a ~ ~ ~
execute as @a[scores={life=4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] at @s[scores={ammo=0}] run playsound minecraft:custom.ak47rel_1 ambient @a ~ ~ ~
execute as @a[scores={life=32},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] at @s run playsound minecraft:custom.ak47rele ambient @a ~ ~ ~
execute as @a run scoreboard players set @s[scores={life=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] move 0
execute as @a[scores={ammo=1..}] at @s[scores={move=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run function games:autoshoot/fireball_main
execute as @e[tag=projfb] at @s unless entity @a[distance=..100] run function games:autoshoot/fireball_miss
execute as @a[scores={life=..11}] run scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] life 36
execute as @a[scores={life=13}] run scoreboard players set @s ammo 10
execute as @a[scores={life=13}] run title @s actionbar [{"text":"Ammo: ","color":"gray"},{"score":{"objective":"ammo","name":"@s"}}]
execute if entity @a[tag=fbfired,tag=phase2] run tag @e[type=!player,nbt={HurtTime:10s}] add fbhit
execute if entity @a[tag=fbfired,tag=phase2] run tag @a[nbt={HurtTime:9s}] add fbhit
execute at @a[nbt={Health:0f},tag=!fbdead] run summon armor_stand ~ ~-0.15 ~ {Invisible:1,NoGravity:1,Tags:["fbdeath","fbhit"]}
tag @a[nbt={Health:0f},tag=!fbdead] add fbdead
tag @a[nbt={Health:20.0f},tag=fbdead] remove fbdead

execute as @a[tag=!fbheadshot] unless score @s totalKill = @s _var06 run title @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] actionbar {"text":"On Target","color":"aqua"}
execute as @a unless score @s totalKill = @s _var06 run tag @s remove fbheadshot
execute if entity @e[tag=fbhit] run function games:autoshoot/fireball_aim
execute as @a[tag=fbfired,tag=phase2] unless entity @e[type=!player,nbt={HurtTime:10s}] unless entity @a[nbt={HurtTime:9s}] if score @s totalKill = @s _var06 run tag @s add fbplayermiss


tag @a[tag=phase2] remove phase1
tag @a[tag=phase2] remove fbfired
tag @a[tag=phase2] remove phase2


tag @a[tag=fbfired,tag=phase1] add phase2
tag @a[tag=fbfired] add phase1


scoreboard players add @e[tag=fbeffect] life 1
scoreboard players add @e[tag=fbhit,type=armor_stand] life 1

kill @e[type=armor_stand,tag=fbhit,scores={life=3}]
execute as @e[tag=fbhst] at @s anchored eyes positioned ^ ^ ^ run particle block redstone_block ~ ~ ~ 0 0 0 1 3 force
execute as @e[tag=fbhst] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ run tp @e[tag=fbeffect,limit=1,sort=nearest,distance=..1] ~ ~ ~
execute as @e[tag=fbhst] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ unless entity @e[tag=fbeffect,limit=1,sort=nearest,distance=..1] run tag @s remove fbhst
execute as @a[scores={life=1..12}] run scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] life 1
execute as @a[scores={life=13..36}] run scoreboard players remove @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] life 1
execute as @e[tag=fbeffect,scores={life=11}] at @s run tag @e[tag=fbhst,limit=1,sort=nearest] remove fbhst
kill @e[tag=fbeffect,scores={life=11}]
scoreboard players add @a[scores={move=..-1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] move 1

execute as @a if score @s totalKill = @s _var06 run title @s[tag=fbplayermiss] actionbar {"text":"Missed/Ineffective","color":"gray"}
tag @a[tag=fbplayermiss] remove fbplayermiss
execute as @a run scoreboard players operation @s _var06 = @s totalKill

scoreboard players set @s _var00 1000
summon area_effect_cloud ~ ~ ~ {Duration:0,Tags:["rdench"]}
execute as @e[tag=rdench,limit=1,distance=..0.1] at @s store result score @s _var00 run data get entity @s UUID[3]
execute as @e[tag=rdench,limit=1,distance=..0.1] run scoreboard players operation @s _var00 %= @p _var00
execute as @e[tag=rdench,limit=1,distance=..0.1] run scoreboard players operation @p _var00 = @s _var00
kill @e[tag=rdench,distance=..0.1]

#unbreaking 35
execute if entity @s[tag=enchub,scores={_var00=650..999}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchub,scores={_var00=890..999}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:3}
execute if entity @s[tag=!enchub,scores={_var00=800..889}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:2}
execute if entity @s[tag=!enchub,scores={_var00=730..799}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:4}
execute if entity @s[tag=!enchub,scores={_var00=680..729}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:1}
execute if entity @s[tag=!enchub,scores={_var00=650..679}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:5}
execute if entity @s[tag=!enchub,scores={_var00=650..999}] run tag @s add enchub

#efficiency 35
execute if entity @s[tag=enchef,scores={_var00=300..649}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchef,scores={_var00=540..649}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"efficiency",lvl:3}
execute if entity @s[tag=!enchef,scores={_var00=450..539}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"efficiency",lvl:2}
execute if entity @s[tag=!enchef,scores={_var00=380..449}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"efficiency",lvl:4}
execute if entity @s[tag=!enchef,scores={_var00=330..379}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"efficiency",lvl:1}
execute if entity @s[tag=!enchef,scores={_var00=300..329}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"efficiency",lvl:5}
execute if entity @s[tag=!enchef,scores={_var00=300..649}] run tag @s add enchef

#fortune 20
execute if entity @s[tag=enchft,scores={_var00=100..299}] run scoreboard players add @s _var01 1
execute if entity @s[tag=enchst,scores={_var00=100..299}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchft,tag=!enchst,scores={_var00=220..299}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fortune",lvl:1}
execute if entity @s[tag=!enchft,tag=!enchst,scores={_var00=160..219}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fortune",lvl:2}
execute if entity @s[tag=!enchft,tag=!enchst,scores={_var00=120..159}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fortune",lvl:3}
execute if entity @s[tag=!enchft,tag=!enchst,scores={_var00=110..119}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fortune",lvl:4}
execute if entity @s[tag=!enchft,tag=!enchst,scores={_var00=100..109}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fortune",lvl:5}
execute if entity @s[tag=!enchft,tag=!enchst,scores={_var00=100..299}] run tag @s add enchft

#mending 5
execute if entity @s[tag=enchmd,scores={_var00=50..99}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchmd,scores={_var00=50..99}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"mending",lvl:1}
execute if entity @s[tag=!enchmd,scores={_var00=50..99}] run tag @s add enchmd

#silk_touch 5
execute if entity @s[tag=enchst,scores={_var00=0..49}] run scoreboard players add @s _var01 1
execute if entity @s[tag=enchft,scores={_var00=0..49}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchst,tag=!enchft,scores={_var00=0..49}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"silk_touch",lvl:1}
execute if entity @s[tag=!enchst,tag=!enchft,scores={_var00=0..49}] run tag @s add enchst



scoreboard players remove @s _var01 1
execute if entity @s[scores={_var01=..0}] run tag @s remove enchub
execute if entity @s[scores={_var01=..0}] run tag @s remove enchef
execute if entity @s[scores={_var01=..0}] run tag @s remove enchft
execute if entity @s[scores={_var01=..0}] run tag @s remove enchmd
execute if entity @s[scores={_var01=..0}] run tag @s remove enchst
execute if entity @s[scores={_var01=1..}] run function trade:enchantments/run_tool

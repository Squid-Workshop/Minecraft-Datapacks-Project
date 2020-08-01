scoreboard players set @s _var00 1000
summon area_effect_cloud ~ ~ ~ {Duration:0,Tags:["rdench"]}
execute as @e[tag=rdench,limit=1,distance=..0.1] at @s store result score @s _var00 run data get entity @s UUID[3]
execute as @e[tag=rdench,limit=1,distance=..0.1] run scoreboard players operation @s _var00 %= @p _var00
execute as @e[tag=rdench,limit=1,distance=..0.1] run scoreboard players operation @p _var00 = @s _var00
kill @e[tag=rdench,distance=..0.1]

#unbreaking 20
execute if entity @s[tag=enchub,scores={_var00=800..999}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchub,scores={_var00=920..999}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:3}
execute if entity @s[tag=!enchub,scores={_var00=860..919}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:2}
execute if entity @s[tag=!enchub,scores={_var00=820..859}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:4}
execute if entity @s[tag=!enchub,scores={_var00=810..819}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:1}
execute if entity @s[tag=!enchub,scores={_var00=800..809}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:5}
execute if entity @s[tag=!enchub,scores={_var00=800..999}] run tag @s add enchub

#sharpness 20
execute if entity @s[tag=enchsp,scores={_var00=600..799}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchsp,scores={_var00=720..799}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"sharpness",lvl:3}
execute if entity @s[tag=!enchsp,scores={_var00=660..719}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"sharpness",lvl:2}
execute if entity @s[tag=!enchsp,scores={_var00=620..659}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"sharpness",lvl:4}
execute if entity @s[tag=!enchsp,scores={_var00=610..619}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"sharpness",lvl:1}
execute if entity @s[tag=!enchsp,scores={_var00=600..609}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"sharpness",lvl:5}
execute if entity @s[tag=!enchsp,scores={_var00=600..799}] run tag @s add enchsp

#knockback 10
execute if entity @s[tag=enchkb,scores={_var00=500..599}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchkb,scores={_var00=550..599}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"knockback",lvl:2}
execute if entity @s[tag=!enchkb,scores={_var00=520..549}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"knockback",lvl:1}
execute if entity @s[tag=!enchkb,scores={_var00=500..519}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"knockback",lvl:3}
execute if entity @s[tag=!enchkb,scores={_var00=500..599}] run tag @s add enchkb

#fire aspect 5
execute if entity @s[tag=enchfa,scores={_var00=450..499}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchfa,scores={_var00=450..499}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fire_aspect",lvl:1}
execute if entity @s[tag=!enchfa,scores={_var00=450..499}] run tag @s add enchfa

#smite 15
execute if entity @s[tag=enchsm,scores={_var00=300..449}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchsm,scores={_var00=400..449}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"smite",lvl:3}
execute if entity @s[tag=!enchsm,scores={_var00=360..399}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"smite",lvl:2}
execute if entity @s[tag=!enchsm,scores={_var00=330..359}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"smite",lvl:4}
execute if entity @s[tag=!enchsm,scores={_var00=310..329}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"smite",lvl:1}
execute if entity @s[tag=!enchsm,scores={_var00=300..309}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"smite",lvl:5}
execute if entity @s[tag=!enchsm,scores={_var00=300..449}] run tag @s add enchsm

#bane_of_arthropods 15
execute if entity @s[tag=enchba,scores={_var00=150..299}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchba,scores={_var00=250..299}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"bane_of_arthropods",lvl:1}
execute if entity @s[tag=!enchba,scores={_var00=210..249}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"bane_of_arthropods",lvl:2}
execute if entity @s[tag=!enchba,scores={_var00=180..209}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"bane_of_arthropods",lvl:3}
execute if entity @s[tag=!enchba,scores={_var00=160..179}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"bane_of_arthropods",lvl:4}
execute if entity @s[tag=!enchba,scores={_var00=150..159}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"bane_of_arthropods",lvl:5}
execute if entity @s[tag=!enchba,scores={_var00=150..299}] run tag @s add enchba

#sweeping 5
execute if entity @s[tag=enchsw,scores={_var00=100..149}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchsw,scores={_var00=130..149}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"sweeping",lvl:1}
execute if entity @s[tag=!enchsw,scores={_var00=110..129}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"sweeping",lvl:2}
execute if entity @s[tag=!enchsw,scores={_var00=100..109}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"sweeping",lvl:3}
execute if entity @s[tag=!enchsw,scores={_var00=100..149}] run tag @s add enchsw

#mending 5
execute if entity @s[tag=enchmd,scores={_var00=50..99}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchmd,scores={_var00=50..99}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"mending",lvl:1}
execute if entity @s[tag=!enchmd,scores={_var00=50..99}] run tag @s add enchmd

#looting 5
execute if entity @s[tag=enchlt,scores={_var00=0..49}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchlt,scores={_var00=30..49}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"looting",lvl:2}
execute if entity @s[tag=!enchlt,scores={_var00=10..29}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"looting",lvl:1}
execute if entity @s[tag=!enchlt,scores={_var00=0..9}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"looting",lvl:3}
execute if entity @s[tag=!enchlt,scores={_var00=0..49}] run tag @s add enchlt



scoreboard players remove @s _var01 1
execute if entity @s[scores={_var01=..0}] run tag @s remove enchub
execute if entity @s[scores={_var01=..0}] run tag @s remove enchsp
execute if entity @s[scores={_var01=..0}] run tag @s remove enchkb
execute if entity @s[scores={_var01=..0}] run tag @s remove enchfa
execute if entity @s[scores={_var01=..0}] run tag @s remove enchsm
execute if entity @s[scores={_var01=..0}] run tag @s remove enchba
execute if entity @s[scores={_var01=..0}] run tag @s remove enchsw
execute if entity @s[scores={_var01=..0}] run tag @s remove enchmd
execute if entity @s[scores={_var01=..0}] run tag @s remove enchlt
execute if entity @s[scores={_var01=1..}] run function trade:enchantments/run_sword

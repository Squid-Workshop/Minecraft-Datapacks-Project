scoreboard players set @s _var00 1000
summon area_effect_cloud ~ ~ ~ {Duration:0,Tags:["rdench"]}
execute as @e[tag=rdench,limit=1,distance=..0.1] at @s store result score @s _var00 run data get entity @s UUID[3]
execute as @e[tag=rdench,limit=1,distance=..0.1] run scoreboard players operation @s _var00 %= @p _var00
execute as @e[tag=rdench,limit=1,distance=..0.1] run scoreboard players operation @p _var00 = @s _var00
kill @e[tag=rdench,distance=..0.1]

#protection 25
execute if entity @s[tag=enchpt,scores={_var00=750..999}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchpt,scores={_var00=920..999}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"protection",lvl:3}
execute if entity @s[tag=!enchpt,scores={_var00=850..919}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"protection",lvl:2}
execute if entity @s[tag=!enchpt,scores={_var00=800..849}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"protection",lvl:4}
execute if entity @s[tag=!enchpt,scores={_var00=770..799}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"protection",lvl:1}
execute if entity @s[tag=!enchpt,scores={_var00=750..769}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"protection",lvl:5}
execute if entity @s[tag=!enchpt,scores={_var00=750..999}] run tag @s add enchpt

#unbreaking 20
execute if entity @s[tag=enchub,scores={_var00=550..749}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchub,scores={_var00=670..749}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:1}
execute if entity @s[tag=!enchub,scores={_var00=610..669}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:2}
execute if entity @s[tag=!enchub,scores={_var00=570..609}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:3}
execute if entity @s[tag=!enchub,scores={_var00=560..569}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:4}
execute if entity @s[tag=!enchub,scores={_var00=550..559}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"unbreaking",lvl:5}
execute if entity @s[tag=!enchub,scores={_var00=550..749}] run tag @s add enchub

#fire protection 10
execute if entity @s[tag=enchfp,scores={_var00=450..549}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchfp,scores={_var00=510..549}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fire_protection",lvl:3}
execute if entity @s[tag=!enchfp,scores={_var00=480..509}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fire_protection",lvl:2}
execute if entity @s[tag=!enchfp,scores={_var00=460..479}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fire_protection",lvl:4}
execute if entity @s[tag=!enchfp,scores={_var00=455..459}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fire_protection",lvl:1}
execute if entity @s[tag=!enchfp,scores={_var00=450..454}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"fire_protection",lvl:5}
execute if entity @s[tag=!enchfp,scores={_var00=450..549}] run tag @s add enchfp

#projectile protection 10
execute if entity @s[tag=enchpp,scores={_var00=350..449}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchpp,scores={_var00=410..449}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"projectile_protection",lvl:3}
execute if entity @s[tag=!enchpp,scores={_var00=380..409}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"projectile_protection",lvl:2}
execute if entity @s[tag=!enchpp,scores={_var00=360..379}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"projectile_protection",lvl:4}
execute if entity @s[tag=!enchpp,scores={_var00=355..359}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"projectile_protection",lvl:1}
execute if entity @s[tag=!enchpp,scores={_var00=350..354}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"projectile_protection",lvl:5}
execute if entity @s[tag=!enchpp,scores={_var00=350..449}] run tag @s add enchpp

#blast protection 10
execute if entity @s[tag=enchbp,scores={_var00=250..349}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchbp,scores={_var00=310..349}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"blast_protection",lvl:3}
execute if entity @s[tag=!enchbp,scores={_var00=280..309}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"blast_protection",lvl:2}
execute if entity @s[tag=!enchbp,scores={_var00=260..279}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"blast_protection",lvl:4}
execute if entity @s[tag=!enchbp,scores={_var00=255..259}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"blast_protection",lvl:1}
execute if entity @s[tag=!enchbp,scores={_var00=250..254}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"blast_protection",lvl:5}
execute if entity @s[tag=!enchbp,scores={_var00=250..349}] run tag @s add enchbp

#thorns 5
execute if entity @s[tag=enchtr,scores={_var00=200..249}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchtr,scores={_var00=230..249}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"thorns",lvl:3}
execute if entity @s[tag=!enchtr,scores={_var00=220..229}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"thorns",lvl:2}
execute if entity @s[tag=!enchtr,scores={_var00=210..219}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"thorns",lvl:4}
execute if entity @s[tag=!enchtr,scores={_var00=205..209}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"thorns",lvl:1}
execute if entity @s[tag=!enchtr,scores={_var00=200..204}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"thorns",lvl:5}
execute if entity @s[tag=!enchtr,scores={_var00=200..249}] run tag @s add enchtr

#mending 5
execute if entity @s[tag=enchmd,scores={_var00=150..199}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchmd,scores={_var00=150..199}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"mending",lvl:1}
execute if entity @s[tag=!enchmd,scores={_var00=150..199}] run tag @s add enchmd

#respiration 5
execute if entity @s[tag=enchrp,scores={_var00=100..149}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchrp,scores={_var00=130..149}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"respiration",lvl:2}
execute if entity @s[tag=!enchrp,scores={_var00=110..129}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"respiration",lvl:1}
execute if entity @s[tag=!enchrp,scores={_var00=100..109}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"respiration",lvl:3}
execute if entity @s[tag=!enchrp,scores={_var00=100..149}] run tag @s add enchrp

#aqua affinity 5
execute if entity @s[tag=enchaa,scores={_var00=50..99}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchaa,scores={_var00=50..99}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"aqua_affinity",lvl:1}
execute if entity @s[tag=!enchaa,scores={_var00=50..99}] run tag @s add enchaa

#feather falling 5
execute if entity @s[tag=enchff,scores={_var00=0..49}] run scoreboard players add @s _var01 1
execute if entity @s[tag=!enchff,scores={_var00=30..49}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"feather_falling",lvl:3}
execute if entity @s[tag=!enchff,scores={_var00=20..29}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"feather_falling",lvl:2}
execute if entity @s[tag=!enchff,scores={_var00=10..19}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"feather_falling",lvl:4}
execute if entity @s[tag=!enchff,scores={_var00=5..9}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"feather_falling",lvl:1}
execute if entity @s[tag=!enchff,scores={_var00=0..4}] run data modify entity @e[tag=beench,limit=1,distance=0] Item.tag.Enchantments append value {id:"feather_falling",lvl:5}
execute if entity @s[tag=!enchff,scores={_var00=0..49}] run tag @s add enchff


scoreboard players remove @s _var01 1
execute if entity @s[scores={_var01=..0}] run tag @s remove enchpt
execute if entity @s[scores={_var01=..0}] run tag @s remove enchfp
execute if entity @s[scores={_var01=..0}] run tag @s remove enchpp
execute if entity @s[scores={_var01=..0}] run tag @s remove enchtr
execute if entity @s[scores={_var01=..0}] run tag @s remove enchub
execute if entity @s[scores={_var01=..0}] run tag @s remove enchbp
execute if entity @s[scores={_var01=..0}] run tag @s remove enchmd
execute if entity @s[scores={_var01=..0}] run tag @s remove enchrp
execute if entity @s[scores={_var01=..0}] run tag @s remove enchaa
execute if entity @s[scores={_var01=..0}] run tag @s remove enchff
execute if entity @s[scores={_var01=1..}] run function trade:enchantments/run_armor

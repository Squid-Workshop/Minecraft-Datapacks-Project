execute store result score @s _var05 run data get entity @s Owner[1]
execute as @a store result score @s _var05 run data get entity @s UUID[1]
execute as @a if score @s _var05 = @e[tag=yaka,sort=nearest,limit=1] _var05 run tag @s add ykdeselect
execute if entity @s[tag=ykpvp] at @p[tag=ykdeselect] run tag @e[tag=!ykdeselect,type=player,sort=nearest,limit=5,distance=..120] add yktarget
execute unless entity @s[tag=ykpvp] at @p[tag=ykdeselect] run tag @e[tag=!ykdeselect,type=!#games:undetected,sort=nearest,limit=2,distance=..120] add yktarget
execute if entity @p[distance=120..] run kill @s
execute at @p[tag=ykdeselect] positioned ~ ~1.52 ~ run kill @s[distance=..0.5,scores={life=181..}]
execute unless entity @e[tag=yktarget] run data merge entity @s[scores={life=..180}] {Age:181}

scoreboard players add @s _var04 1
scoreboard players set @s _var03 2
execute store result score @s life run data get entity @s Age
scoreboard players operation @s _var00 = @s _var04
scoreboard players operation @s _var00 %= @s _var03



#execute at @s positioned ^ ^ ^ unless block ~ ~ ~ #games:bullet_penetrable run tag @s add ykimpact
#execute at @s positioned ^ ^ ^0.3 unless block ~ ~ ~ #games:bullet_penetrable run tag @s add ykimpact
#execute at @s positioned ^ ^ ^0.6 unless block ~ ~ ~ #games:bullet_penetrable run tag @s add ykimpact
#execute at @s positioned ^ ^ ^0.9 unless block ~ ~ ~ #games:bullet_penetrable run tag @s add ykimpact
#execute at @s positioned ^ ^ ^1.2 unless block ~ ~ ~ #games:bullet_penetrable run tag @s add ykimpact
particle minecraft:witch ~ ~ ~ 0.01 0.01 0.01 0 1 force

summon area_effect_cloud ~ ~ ~ {Tags:["ykdr"],Duration:1}
execute if entity @s[scores={life=..180}] run tp @e[tag=ykdr,distance=..0.1] ~ ~ ~ facing entity @e[tag=yktarget,limit=1,sort=nearest] eyes
execute if entity @s[scores={life=181..200}] run tp @e[tag=ykdr,distance=..0.1] ~ ~ ~ facing entity @p[tag=ykdeselect] eyes
execute store result score @s _var02 run data get entity @s Rotation[0] 10
execute store result score @s _var01 run data get entity @e[tag=ykdr,distance=..0.1,limit=1] Rotation[0] 10
scoreboard players operation @s _var01 -= @s _var02
execute store result score @s _var03 run data get entity @s Rotation[1] 10
execute store result score @s _var02 run data get entity @e[tag=ykdr,distance=..0.1,limit=1] Rotation[1] 10
scoreboard players operation @s _var02 -= @s _var03
kill @e[tag=ykdr,distance=..0.1]

execute if entity @s[scores={_var01=..-1}] run scoreboard players add @s _var01 3600
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=3501..3550}] run tp @s ^ ^ ^ ~-5 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=3401..3500}] run tp @s ^ ^ ^ ~-10 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=3101..3400}] run tp @s ^ ^ ^ ~-15 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=2701..3100}] run tp @s ^ ^ ^ ~-15 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=1801..2700}] run tp @s ^ ^ ^ ~-10 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=901..1800}] run tp @s ^ ^ ^ ~10 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=501..900}] run tp @s ^ ^ ^ ~15 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=201..500}] run tp @s ^ ^ ^ ~15 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=100..200}] run tp @s ^ ^ ^ ~10 ~
execute if entity @s[scores={_var00=0}] if entity @s[scores={_var01=50..100}] run tp @s ^ ^ ^ ~5 ~
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=-1800..-901}] run tp @s ^ ^ ^ ~ ~-10
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=-900..-501}] run tp @s ^ ^ ^ ~ ~-15
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=-500..-201}] run tp @s ^ ^ ^ ~ ~-15
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=-200..-100}] run tp @s ^ ^ ^ ~ ~-10
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=-100..-50}] run tp @s ^ ^ ^ ~ ~-5
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=51..100}] run tp @s ^ ^ ^ ~ ~5
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=101..200}] run tp @s ^ ^ ^ ~ ~10
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=201..500}] run tp @s ^ ^ ^ ~ ~15
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=501..900}] run tp @s ^ ^ ^ ~ ~15
execute if entity @s[scores={_var00=1}] if entity @s[scores={_var02=901..1800}] run tp @s ^ ^ ^ ~ ~10


#tp @s[tag=!msimpact,scores={life=..14}] ^ ^ ^0.1
tp @s[tag=!msimpact,scores={life=0..19}] ^ ^ ^0.25
execute if entity @e[tag=yktarget,sort=nearest,limit=1,distance=10..] run tp @s[scores={life=20..180},tag=!msimpact,tag=!msrotate] ^ ^ ^0.5
execute if entity @e[tag=yktarget,sort=nearest,limit=1,distance=5..10] run tp @s[scores={life=20..180},tag=!msimpact,tag=!msrotate] ^ ^ ^0.5
execute if entity @e[tag=yktarget,sort=nearest,limit=1,distance=2.5..5] run tp @s[scores={life=20..180},tag=!msimpact,tag=!msrotate] ^ ^ ^0.5
execute if entity @e[tag=yktarget,sort=nearest,limit=1,distance=1..2.5] run tp @s[scores={life=20..180},tag=!msimpact,tag=!msrotate] ^ ^ ^0.25
execute if entity @e[tag=yktarget,sort=nearest,limit=1,distance=..1] run tp @s[scores={life=20..180},tag=!msimpact,tag=!msrotate] ^ ^ ^0.1

execute if entity @e[tag=ykdeselect,sort=nearest,limit=1,distance=5..] run tp @s[scores={life=181..},tag=!msimpact,tag=!msrotate] ^ ^ ^0.5
execute if entity @e[tag=ykdeselect,sort=nearest,limit=1,distance=2..5] run tp @s[scores={life=181..},tag=!msimpact,tag=!msrotate] ^ ^ ^0.25
execute if entity @e[tag=ykdeselect,sort=nearest,limit=1,distance=..2] run tp @s[scores={life=181..},tag=!msimpact,tag=!msrotate] ^ ^ ^0.1

execute as @e[tag=yktarget,limit=1,sort=nearest,distance=..5] at @s anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["yktg"],Duration:1}
execute positioned ^ ^ ^ if entity @e[tag=yktg,distance=..1] run execute positioned ^ ^ ^-2 unless entity @e[tag=ykef,distance=..3] run tag @s add ykeffect
execute positioned ^ ^ ^0.5 if entity @e[tag=yktg,distance=..1] run execute positioned ^ ^ ^-2 unless entity @e[tag=ykef,distance=..3] run tag @s add ykeffect

#execute positioned ^ ^ ^ run kill @e[type=!player,tag=yktarget,distance=..0.5]
#execute positioned ^ ^ ^0.25 run kill @e[type=!player,tag=yktarget,distance=..0.5]

execute at @s[tag=ykeffect] positioned ^ ^ ^-2 run function games:cosplay/yondu/yaka_arrow/effect

tag @e[tag=yktarget] remove yktarget
tag @e[tag=ykdeselect] remove ykdeselect
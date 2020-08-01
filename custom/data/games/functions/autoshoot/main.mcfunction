tag @s[scores={move=1..}] add autoshooting
tag @s[tag=autoshootfb] remove autoshootrandom
scoreboard players reset @s[scores={move=1..}] move
scoreboard players set @s[tag=autoshooting,tag=autoshootrandom] _var01 2000
scoreboard players set @s[tag=autoshooting,tag=autoshootrandom] _var02 1000
execute at @s[tag=autoshooting] positioned ~ ~1.52 ~ run kill @e[type=arrow,distance=..0.5]
execute at @s[tag=autoshooting] run summon area_effect_cloud ^ ^ ^-3 {Invisible:1b,Tags:["v"]}
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] x run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[0] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] y run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[1] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] z run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[2] 10000
execute at @s[tag=autoshooting] run execute store result score @s x run data get entity @s Pos[0] 10000
execute at @s[tag=autoshooting] run execute store result score @s y run data get entity @s Pos[1] 10000
execute at @s[tag=autoshooting] run execute store result score @s z run data get entity @s Pos[2] 10000
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s x -= @e[tag=v,distance=..0.1,limit=1] x
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s y -= @e[tag=v,distance=..0.1,limit=1] y
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run scoreboard players operation @s z -= @e[tag=v,distance=..0.1,limit=1] z
execute at @s[tag=autoshooting] positioned ^ ^ ^-3 run kill @e[tag=v,distance=..0.1]

execute at @s[tag=autoshooting,tag=autoshootfb] run summon fireball ~ ~1.52 ~ {Damage:10.0d,ExplosionPower:0b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=!autoshootfb] run summon arrow ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon arrow ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon spectral_arrow ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon spectral_arrow ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon spectral_arrow ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon trident ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon trident ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}
execute at @s[tag=autoshooting,tag=autoshootrandom] run summon trident ~ ~1.52 ~ {Damage:10.0d,PierceLevel:10b,Tags:["proj"],Owner:[I;1,-1,-2,-3],pickup:1b,Damage:1,direction:[0.0d,0.0d,0.0d],NoGravity:0b}

execute as @a[tag=autoshooting] at @s positioned ~ ~1.52 ~ run execute as @e[tag=proj,distance=0] positioned ~ ~-1.52 ~ run data modify entity @s Owner set from entity @e[limit=1,sort=nearest,tag=autoshooting] UUID
execute at @s[tag=autoshooting,tag=autoshootrandom] positioned ~ ~1.52 ~ as @e[distance=0,tag=proj] run function games:autoshoot/random
execute at @s[tag=autoshooting] positioned ~ ~1.52 ~ as @e[distance=0,tag=proj] run function games:autoshoot/launch
execute at @s[tag=autoshooting,tag=!autoshootfb] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1
execute at @s[tag=autoshooting,tag=autoshootfb] run playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 1 1
tag @s remove autoshooting

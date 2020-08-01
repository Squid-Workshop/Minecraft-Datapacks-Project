
clear @s
effect clear @s
scoreboard players set @s ammo 0
scoreboard players set @s b_rifle 30
scoreboard players set @s b_mini 500
scoreboard players set @s b_smg 50
scoreboard players set @s b_shot 2
scoreboard players set @s b_sniper 5
scoreboard players set @s b_energy 25
scoreboard players set @s lever 0

########roles resp
function games:fight_club/character/respawn
########deathmatch
function games:fight_club/team/tag
execute if score club pvpmode matches 1 as @s at @r[tag=enemy,tag=ingame] run spreadplayers ~ ~ 50 50 true @s
function games:fight_club/team/untag
############################no target
execute as @s[distance=..8,tag=ingame] if score club pvpmode matches 1 run function games:fight_club/club/deathmatch/spawn
execute as @s[distance=..8,tag=ingame] if score club pvpmode matches 2 run function games:fight_club/club/catchman/spawn
#########no pvp mode and no scene
execute as @s[distance=..8] run tp @s -1298 21 -1775 facing -1298.5 22 -1785

tag @s remove resp






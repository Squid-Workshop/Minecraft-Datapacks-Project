
#far glow
execute if score club pvpmode matches 1 as @a[tag=ingame] at @s run function games:fight_club/club/far_glow

#clear bottle
clear @a[tag=ingame] glass_bottle



#global effects
execute as @a[tag=ingame] run function games:fight_club/character/effect



##############ninja
execute as @a[tag=!shift_bool,scores={role=3,invisibility=1..}] run function games:fight_club/character/ninja/run_delayed


schedule function games:fight_club/character/run_delayed 2s
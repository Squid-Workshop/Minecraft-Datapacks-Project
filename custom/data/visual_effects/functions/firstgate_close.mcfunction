execute positioned ~-2.0 ~ ~ as @e[tag=first_gate,dx=1,dy=3,dz=0] run execute run data merge entity @s {Motion:[-0.1d,0d,0d]}
execute positioned ~-5.0 ~ ~ as @e[tag=first_gate,dx=0,dy=3,dz=0] run data merge entity @s {Motion:[0.0d,0d,0d]}
execute positioned ~-3.0 ~ ~ as @e[tag=first_gate,dx=2,dy=3,dz=0] at @s run fill ~-1.0 32 ~ ~-1.0 33 ~ iron_bars keep
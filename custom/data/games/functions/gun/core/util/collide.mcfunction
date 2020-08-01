#/from MGS_2.0.1 gun mod/
#v0 10 * t, v1 1000*dx, v2 1000*dy, v3 1000*dz, v4 1000*x, v5 1000*y, v6 1000*z, v13 min_t
#v15 block type

execute unless block ~ ~ ~ #games:air run scoreboard players set v15 V 1

scoreboard players operation v7 V = v4 V
scoreboard players operation v8 V = v5 V
scoreboard players operation v9 V = v6 V
execute if score v1 V matches 1.. run scoreboard players operation v7 V *= -1 C
execute if score v2 V matches 1.. run scoreboard players operation v8 V *= -1 C
execute if score v3 V matches 1.. run scoreboard players operation v9 V *= -1 C
scoreboard players operation v7 V %= 1000 C
scoreboard players operation v8 V %= 1000 C
scoreboard players operation v9 V %= 1000 C
scoreboard players operation v7 V *= 10 C
scoreboard players operation v8 V *= 10 C
scoreboard players operation v9 V *= 10 C
execute if score v1 V matches ..-1 run scoreboard players operation v7 V *= -1 C
execute if score v2 V matches ..-1 run scoreboard players operation v8 V *= -1 C
execute if score v3 V matches ..-1 run scoreboard players operation v9 V *= -1 C

scoreboard players operation v7 V /= v1 V
scoreboard players operation v8 V /= v2 V
scoreboard players operation v9 V /= v3 V

execute if score v1 V matches 1.. if score v7 V <= v13 V if score v7 V <= v8 V if score v7 V <= v9 V if block ~1 ~ ~ #games:solid run scoreboard players operation v13 V = v7 V
execute if score v1 V matches ..1 if score v7 V <= v13 V if score v7 V <= v8 V if score v7 V <= v9 V if block ~-1 ~ ~ #games:solid run scoreboard players operation v13 V = v7 V

execute if score v2 V matches 1.. if score v8 V <= v13 V if score v8 V <= v7 V if score v8 V <= v9 V if block ~ ~1 ~ #games:solid run scoreboard players operation v13 V = v8 V
execute if score v2 V matches ..1 if score v8 V <= v13 V if score v8 V <= v7 V if score v8 V <= v9 V if block ~ ~-1 ~ #games:solid run scoreboard players operation v13 V = v8 V

execute if score v3 V matches 1.. if score v9 V <= v13 V if score v9 V <= v7 V if score v9 V <= v8 V if block ~ ~ ~1 #games:solid run scoreboard players operation v13 V = v9 V
execute if score v3 V matches ..1 if score v9 V <= v13 V if score v9 V <= v7 V if score v9 V <= v8 V if block ~ ~ ~-1 #games:solid run scoreboard players operation v13 V = v9 V

execute if score v13 V matches 0..9 run scoreboard players set v15 V 2
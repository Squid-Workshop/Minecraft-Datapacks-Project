#/from MGS_2.0.1 gun mod/
execute store result score v0 V run data get entity @r[limit=1] Pos[0] 100000
execute store result score v1 V run data get entity @r[limit=1] Pos[1] 100000
execute store result score v2 V run data get entity @r[limit=1] Pos[2] 100000
scoreboard players operation v3 V = time V
scoreboard players operation randraw V += v0 V
scoreboard players operation randraw V += v1 V
scoreboard players operation randraw V += v3 V
execute store result score v0 V run data get entity @r[limit=1] Rotation[0] 100000
execute store result score v1 V run data get entity @r[limit=1] Rotation[1] 100000
scoreboard players operation randraw V *= v0 V
scoreboard players operation randraw V *= v1 V
scoreboard players operation randraw V *= midprime C
scoreboard players operation randraw V += v2 V
scoreboard players operation randraw V %= bigprime C
scoreboard players operation rand V = randraw V
scoreboard players operation rand V %= 10000 C
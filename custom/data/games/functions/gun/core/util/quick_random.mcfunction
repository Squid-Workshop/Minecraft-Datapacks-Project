#/from MGS_2.0.1 gun mod/
scoreboard players operation randraw V *= bigprime C
scoreboard players operation randraw V += time V
scoreboard players operation randraw V %= midprime C
scoreboard players operation rand V = randraw V
scoreboard players operation rand V %= 10000 C

#/from MGS_2.0.1 gun mod/

#v1 1000*dx, v2 1000*dy, v3 1000*dz, v4 1000*x, v5 1000*y, v6 1000*z, v7 1000*px, v8 1000*py, v9 1000*pz, v13 running_t
#v14 min_t
scoreboard players set v14 V -2147483648
#v15 max_t
scoreboard players set v15 V 2147483647

scoreboard players operation v10 V = v7 V
scoreboard players operation v11 V = v8 V
scoreboard players operation v12 V = v9 V
scoreboard players operation v7 V -= @s r
scoreboard players operation v9 V -= @s r
scoreboard players operation v10 V += @s r
scoreboard players operation v11 V += @s h
scoreboard players operation v12 V += @s r

execute if score v1 V matches 0 if score v4 V > v10 V run scoreboard players set v15 V -2147483648
execute if score v1 V matches 0 if score v4 V < v7 V run scoreboard players set v14 V 2147483647
execute if score v2 V matches 0 if score v5 V > v11 V run scoreboard players set v15 V -2147483648
execute if score v2 V matches 0 if score v5 V < v8 V run scoreboard players set v14 V 2147483647
execute if score v3 V matches 0 if score v6 V > v12 V run scoreboard players set v15 V -2147483648
execute if score v3 V matches 0 if score v6 V < v9 V run scoreboard players set v14 V 2147483647

scoreboard players operation v7 V -= v4 V
scoreboard players operation v8 V -= v5 V
scoreboard players operation v9 V -= v6 V
scoreboard players operation v7 V *= 10 C
scoreboard players operation v8 V *= 10 C
scoreboard players operation v9 V *= 10 C
scoreboard players operation v7 V /= v1 V
scoreboard players operation v8 V /= v2 V
scoreboard players operation v9 V /= v3 V
scoreboard players operation v10 V -= v4 V
scoreboard players operation v11 V -= v5 V
scoreboard players operation v12 V -= v6 V
scoreboard players operation v10 V *= 10 C
scoreboard players operation v11 V *= 10 C
scoreboard players operation v12 V *= 10 C
scoreboard players operation v10 V /= v1 V
scoreboard players operation v11 V /= v2 V
scoreboard players operation v12 V /= v3 V

execute if score v1 V matches 1.. if score v7 V > v14 V run scoreboard players operation v14 V = v7 V
execute if score v1 V matches 1.. if score v10 V < v15 V run scoreboard players operation v15 V = v10 V
execute if score v1 V matches ..-1 if score v10 V > v14 V run scoreboard players operation v14 V = v10 V
execute if score v1 V matches ..-1 if score v7 V < v15 V run scoreboard players operation v15 V = v7 V

execute if score v2 V matches 1.. if score v8 V > v14 V run scoreboard players operation v14 V = v8 V
execute if score v2 V matches 1.. if score v11 V < v15 V run scoreboard players operation v15 V = v11 V
execute if score v2 V matches ..-1 if score v11 V > v14 V run scoreboard players operation v14 V = v11 V
execute if score v2 V matches ..-1 if score v8 V < v15 V run scoreboard players operation v15 V = v8 V

execute if score v3 V matches 1.. if score v9 V > v14 V run scoreboard players operation v14 V = v9 V
execute if score v3 V matches 1.. if score v12 V < v15 V run scoreboard players operation v15 V = v12 V
execute if score v3 V matches ..-1 if score v12 V > v14 V run scoreboard players operation v14 V = v12 V
execute if score v3 V matches ..-1 if score v9 V < v15 V run scoreboard players operation v15 V = v9 V
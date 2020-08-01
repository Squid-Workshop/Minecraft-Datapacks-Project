execute if score @p Balance matches ..49 run tellraw @p {"text":"You cannot afford this.","color":"gray"}

execute if score @p Balance matches 50.. run give @p cake 1

execute if score @p Balance matches 50.. run scoreboard players remove @p Balance 50
execute if score @p Balance matches ..39 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 40.. run give @p rabbit_stew 1
execute if score @p Balance matches 40.. run scoreboard players remove @p Balance 40
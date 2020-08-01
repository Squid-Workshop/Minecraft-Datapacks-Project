execute if score @p Balance matches ..117 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 118.. run give @p clock
execute if score @p Balance matches 118.. run scoreboard players remove @p Balance 118
execute if score @p Balance matches ..4 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 5.. run give @p apple 1
execute if score @p Balance matches 5.. run scoreboard players remove @p Balance 5
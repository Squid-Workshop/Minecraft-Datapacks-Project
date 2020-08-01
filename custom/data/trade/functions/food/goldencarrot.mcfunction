execute if score @p Balance matches ..29 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 30.. run give @p golden_carrot 1
execute if score @p Balance matches 30.. run scoreboard players remove @p Balance 30
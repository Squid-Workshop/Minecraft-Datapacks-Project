execute if score @p Balance matches ..235 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 236.. run give @p golden_chestplate
execute if score @p Balance matches 236.. run scoreboard players remove @p Balance 236
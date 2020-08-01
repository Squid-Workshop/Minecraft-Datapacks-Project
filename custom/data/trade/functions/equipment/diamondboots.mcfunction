execute if score @p Balance matches ..409 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 410.. run give @p diamond_boots
execute if score @p Balance matches 410.. run scoreboard players remove @p Balance 410
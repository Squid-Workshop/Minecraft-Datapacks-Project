execute if score @p Balance matches ..9 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 10.. run give @p cooked_chicken 1
execute if score @p Balance matches 10.. run scoreboard players remove @p Balance 10
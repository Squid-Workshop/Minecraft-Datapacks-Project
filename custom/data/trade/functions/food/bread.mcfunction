execute if score @p Balance matches ..6 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 7.. run give @p bread 1
execute if score @p Balance matches 7.. run scoreboard players remove @p Balance 7
execute if score @p Balance matches ..139 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 140.. run give @p iron_helmet
execute if score @p Balance matches 140.. run scoreboard players remove @p Balance 140
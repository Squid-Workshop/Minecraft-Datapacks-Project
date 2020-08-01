execute if score @p Balance matches ..59 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 60.. run give @p iron_hoe
execute if score @p Balance matches 60.. run scoreboard players remove @p Balance 60
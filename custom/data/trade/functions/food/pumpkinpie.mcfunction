execute if score @p Balance matches ..14 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 15.. run give @p pumpkin_pie
execute if score @p Balance matches 15.. run scoreboard players remove @p Balance 15
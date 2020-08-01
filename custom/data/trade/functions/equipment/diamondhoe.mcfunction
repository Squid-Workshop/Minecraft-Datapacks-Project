execute if score @p Balance matches ..209 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 210.. run give @p diamond_hoe
execute if score @p Balance matches 210.. run scoreboard players remove @p Balance 210
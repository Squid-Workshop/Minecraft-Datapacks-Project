execute if score @p Balance matches ..55 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 56.. run give @p iron_sword
execute if score @p Balance matches 56.. run scoreboard players remove @p Balance 56
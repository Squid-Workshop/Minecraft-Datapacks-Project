execute if score @p Balance matches ..299 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 300.. run give @p enchanted_golden_apple 1
execute if score @p Balance matches 300.. run scoreboard players remove @p Balance 300
execute if score @p Balance matches ..199 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 200.. run give @p golden_apple 1
execute if score @p Balance matches 200.. run scoreboard players remove @p Balance 200
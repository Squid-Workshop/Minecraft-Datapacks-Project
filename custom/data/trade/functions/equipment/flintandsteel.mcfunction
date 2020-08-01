execute if score @p Balance matches ..32 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 33.. run give @p flint_and_steel
execute if score @p Balance matches 33.. run scoreboard players remove @p Balance 33
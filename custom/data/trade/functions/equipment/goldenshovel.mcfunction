execute if score @p Balance matches ..30 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 31.. run give @p golden_shovel
execute if score @p Balance matches 31.. run scoreboard players remove @p Balance 31
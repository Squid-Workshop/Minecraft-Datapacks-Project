execute if score @p Balance matches ..202 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 203.. run give @p golden_leggings
execute if score @p Balance matches 203.. run scoreboard players remove @p Balance 203
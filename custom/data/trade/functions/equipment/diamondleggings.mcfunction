execute if score @p Balance matches ..727 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 728.. run give @p diamond_leggings
execute if score @p Balance matches 728.. run scoreboard players remove @p Balance 728
execute if score @p Balance matches ..835 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 836.. run give @p diamond_chestplate
execute if score @p Balance matches 836.. run scoreboard players remove @p Balance 836
execute if score @p Balance matches ..89 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 90.. run give @p golden_axe
execute if score @p Balance matches 90.. run scoreboard players remove @p Balance 90
execute if score @p Balance matches ..514 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 515.. run give @p diamond_helmet
execute if score @p Balance matches 515.. run scoreboard players remove @p Balance 515
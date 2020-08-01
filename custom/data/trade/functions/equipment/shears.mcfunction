execute if score @p Balance matches ..52 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 53.. run give @p shears
execute if score @p Balance matches 53.. run scoreboard players remove @p Balance 53
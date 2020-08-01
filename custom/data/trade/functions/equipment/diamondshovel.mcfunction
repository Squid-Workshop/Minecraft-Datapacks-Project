execute if score @p Balance matches ..105 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 106.. run give @p diamond_shovel
execute if score @p Balance matches 106.. run scoreboard players remove @p Balance 106
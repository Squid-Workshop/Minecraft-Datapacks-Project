execute if score @p Balance matches ..205 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 206.. run give @p diamond_sword
execute if score @p Balance matches 206.. run scoreboard players remove @p Balance 206
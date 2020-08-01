execute if score @p Balance matches ..1 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 2.. run give @p dried_kelp 1
execute if score @p Balance matches 2.. run scoreboard players remove @p Balance 2
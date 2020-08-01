execute if score @p Balance matches ..2 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 3.. run give @p sweet_berries 1
execute if score @p Balance matches 3.. run scoreboard players remove @p Balance 3
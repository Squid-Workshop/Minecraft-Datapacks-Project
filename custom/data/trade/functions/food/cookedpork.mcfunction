execute if score @p Balance matches ..19 run tellraw @p {"text":"You cannot afford this.","color":"gray"}
execute if score @p Balance matches 20.. run give @p cooked_porkchop 1
execute if score @p Balance matches 20.. run scoreboard players remove @p Balance 20
execute if score @p Balance matches ..1031 run tellraw @p {"text":"You cannot afford these.","color":"gray"}
execute if score @p Balance matches 1032.. run function trade:equipment/givediamondtoolset
execute if score @p Balance matches 1032.. run scoreboard players remove @p Balance 1032
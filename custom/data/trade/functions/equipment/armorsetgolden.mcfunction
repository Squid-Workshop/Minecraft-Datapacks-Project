execute if score @p Balance matches ..688 run tellraw @p {"text":"You cannot afford these.","color":"gray"}
execute if score @p Balance matches 689.. run function trade:equipment/givegoldenarmorset
execute if score @p Balance matches 689.. run scoreboard players remove @p Balance 689
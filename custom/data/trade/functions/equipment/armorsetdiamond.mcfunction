execute if score @p Balance matches ..2488 run tellraw @p {"text":"You cannot afford these.","color":"gray"}
execute if score @p Balance matches 2489.. run function trade:equipment/givediamondarmorset
execute if score @p Balance matches 2489.. run scoreboard players remove @p Balance 2489
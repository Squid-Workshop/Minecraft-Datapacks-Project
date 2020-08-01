execute if score @p Balance matches ..356 run tell @p You cannot afford these.
execute if score @p Balance matches 357.. run function trade:equipment/givegoldentoolset
execute if score @p Balance matches 357.. run scoreboard players remove @p Balance 357
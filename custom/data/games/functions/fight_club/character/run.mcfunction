
#ninja
execute as @a[scores={role=3}] run function games:fight_club/character/ninja/run
#curse_carrier
execute as @a[scores={role=5}] run function games:fight_club/character/curse_carrier/run
#archer
execute as @a[scores={role=7}] run function games:fight_club/character/archer/run


############################features#############################################
#delete items
execute as @e[type=item,nbt={Item:{tag:{private:1b}}}] run kill @s
#loots
scoreboard players add @e[tag=loots] life 1
execute as @a[tag=ingame] at @s if entity @e[tag=loots,distance=..2,scores={life=10..}] run function games:fight_club/character/loots
############################features#############################################






# update bools regularly
# discrete   updates once per every tick
# continuous updates once per three ticks
# discrete should be strictly before continuous
#  (because for some tags they follow the sequence: untagging in discrete, tagging back in continuous
execute if entity @e[tag=bools_timer,scores={life=1..4}] as @a run function global_variables:bools/bools_check_discrete
execute if entity @e[tag=bools_timer,scores={life=1}   ] as @a run function global_variables:bools/bools_check_continuous

# if ( Timer life == 4 )
# then reset the timer to 1
scoreboard players add @e[x=-1193.50,y=32.5,z=-1843.50,distance=..0.5,tag=bools_timer,limit=1] life 1
scoreboard players set @e[x=-1193.50,y=32.5,z=-1843.50,distance=..0.5,tag=bools_timer,scores={life=4},limit=1] life 1
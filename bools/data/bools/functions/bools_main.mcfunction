########################################
# update bools regularly
# discrete   updates once per every tick
# continuous updates once per three ticks
# discrete should be strictly before continuous
#  (because for some tags they follow the sequence: untagging in discrete, tagging back in continuous)
execute if score bools_timer bools_timer matches ..4 as @a run function bools:bools_check_discrete
execute if score bools_timer bools_timer matches 1 as @a run function bools:bools_check_continuous

########################################
# Timer ++
scoreboard players add bools_timer bools_timer 1

########################################
# if ( Timer == 4 )
# then reset the timer to 1
execute if score bools_timer bools_timer matches 4 run scoreboard players set bools_timer bools_timer 1
# reset all the helper variables
scoreboard players reset @a walk_helper
scoreboard players reset @a shift_helper
scoreboard players reset @a sprint_helper
scoreboard players reset @a rightClik_helper
scoreboard players reset @a jump_helper
scoreboard players reset @a sleep_helper
scoreboard players set @a containr_helper0 0
scoreboard players set @a containr_helper1 0
scoreboard players set @a containr_helper2 0
scoreboard players set @a containr_helper3 0
scoreboard players set @a containr_helper4 0
scoreboard players set @a containr_helper5 0
scoreboard players set @a containr_helper6 0
scoreboard players set @a containr_helper7 0
scoreboard players set @a containr_helper8 0
scoreboard players set @a containr_helper9 0

# reset all the tags
tag @a remove walk_bool
tag @a remove shift_bool
tag @a remove sprint_bool
tag @a remove rightClik_bool
tag @a remove jump_bool
tag @a remove sleep_bool
tag @a remove container_bool

# kill the old timer
kill @e[tag=bools_timer]

# summon a new timer
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"bools_timer\"",CustomNameVisible:1,Tags:["bools_timer"],Invulnerable:1b,NoGravity:1b}
scoreboard players set @e[distance=..5,tag=bools_timer] life 1
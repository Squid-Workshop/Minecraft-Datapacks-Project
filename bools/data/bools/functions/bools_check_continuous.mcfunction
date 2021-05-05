########################################
# walk_begin tags when player starts walking
# walk_end   tags when player stops
# the untagging part is in bools_check_discrete
# before the execution of following commands, the game will update walk_helper first 
execute if entity @s[scores={walk_helper=1..},tag=!walk_bool] run tag @s add walk_begin
execute if entity @s[scores={walk_helper=  0},tag= walk_bool] run tag @s add walk_end
########################################
# walk_bool   tags when player is walking
# walk_bool untags when player is not
# before the execution of following commands, the game will update walk_helper first 
execute if entity @s[scores={walk_helper=1..}] run tag @s add walk_bool
execute if entity @s[scores={walk_helper=  0}] run tag @s remove walk_bool
execute if entity @s[scores={walk_helper=1..}] run scoreboard players set @s walk_helper 0

########################################
# shift_begin tags when player starts pressing shift
# shift_end   tags when player stops
# the untagging part is in bools_check_discrete
# before the execution of following commands, the game will update shift_helper first 
execute if entity @s[scores={shift_helper=1..},tag=!shift_bool] run tag @s add shift_begin
execute if entity @s[scores={shift_helper=  0},tag= shift_bool] run tag @s add shift_end
########################################
# shift_bool tags   when player is pressing shift
# shift_bool untags when player is not
# before the execution of following commands, the game will update shift_helper first 
execute if entity @s[scores={shift_helper=1..}] run tag @s add shift_bool
execute if entity @s[scores={shift_helper=  0}] run tag @s remove shift_bool
execute if entity @s[scores={shift_helper=1..}] run scoreboard players set @s shift_helper 0

########################################
# sprint_begin tags when player starts sprinting
# sprint_end   tags when player stops
# the untagging part is in bools_check_discrete
# before the execution of following commands, the game will update sprint_helper first 
execute if entity @s[scores={sprint_helper=1..},tag=!sprint_bool] run tag @s add sprint_begin
execute if entity @s[scores={sprint_helper=  0},tag= sprint_bool] run tag @s add sprint_end
########################################
# sprint_bool tags   when player is sprinting
# sprint_bool untags when player is not
# before the execution of following commands, the game will update sprint_helper first 
execute if entity @s[scores={sprint_helper=1..}] run tag @s add sprint_bool
execute if entity @s[scores={sprint_helper=  0}] run tag @s remove sprint_bool
execute if entity @s[scores={sprint_helper=1..}] run scoreboard players set @s sprint_helper 0
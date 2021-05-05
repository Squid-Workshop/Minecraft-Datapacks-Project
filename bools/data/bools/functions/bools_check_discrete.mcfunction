########################################
# carotClik_bool   tags when player right clicked using carrot stick
# carotClik_bool untags when player does not
# before the execution of following commands, the game will update carotClik_helper first 
execute if entity @s[scores={carotClik_helper=1..}] run tag @s add carotClik_bool
execute if entity @s[scores={carotClik_helper=  0}] run tag @s remove carotClik_bool
execute if entity @s[scores={carotClik_helper=1..}] run scoreboard players set @s carotClik_helper 0

########################################
# fungiClik_bool   tags when player right clicked using fungus stick
# fungiClik_bool untags when player does not
# before the execution of following commands, the game will update fungiClik_helper first 
execute if entity @s[scores={fungiClik_helper=1..}] run tag @s add fungiClik_bool
execute if entity @s[scores={fungiClik_helper=  0}] run tag @s remove fungiClik_bool
execute if entity @s[scores={fungiClik_helper=1..}] run scoreboard players set @s fungiClik_helper 0

########################################
# fishrClik_bool   tags when player right clicked using fishing rod
# fishrClik_bool untags when player does not
# before the execution of following commands, the game will update fishrClik_helper first 
execute if entity @s[scores={fishrClik_helper=1..}] run tag @s add fishrClik_bool
execute if entity @s[scores={fishrClik_helper=  0}] run tag @s remove fishrClik_bool
execute if entity @s[scores={fishrClik_helper=1..}] run scoreboard players set @s fishrClik_helper 0

########################################
# jump_bool   tags when player jumped
# jump_bool untags when player does not
# before the execution of following commands, the game will update jump_helper first 
execute if entity @s[scores={jump_helper=1..}] run tag @s add jump_bool
execute if entity @s[scores={jump_helper=  0}] run tag @s remove jump_bool
execute if entity @s[scores={jump_helper=1..}] run scoreboard players set @s jump_helper 0

########################################
# bow_bool   tags when player used a bow
# bow_bool untags when player does not
# before the execution of following commands, the game will update bow_helper first 
execute if entity @s[scores={bow_helper=1..}] run tag @s add bow_bool
execute if entity @s[scores={bow_helper=  0}] run tag @s remove bow_bool
execute if entity @s[scores={bow_helper=1..}] run scoreboard players set @s bow_helper 0

########################################
# crossbow_bool   tags when player jumped
# crossbow_bool untags when player does not
# before the execution of following commands, the game will update crossbow_helper first 
execute if entity @s[scores={crossbow_helper=1..}] run tag @s add crossbow_bool
execute if entity @s[scores={crossbow_helper=  0}] run tag @s remove crossbow_bool
execute if entity @s[scores={crossbow_helper=1..}] run scoreboard players set @s crossbow_helper 0

########################################
# pearl_bool   tags when player used ender_pearl
# pearl_bool untags when player does not
# before the execution of following commands, the game will update pearl_helper first 
execute if entity @s[scores={pearl_helper=1..}] run tag @s add pearl_bool
execute if entity @s[scores={pearl_helper=  0}] run tag @s remove pearl_bool
execute if entity @s[scores={pearl_helper=1..}] run scoreboard players set @s pearl_helper 0

########################################
# container_bool   tags when player interact with barrel/chest/enderchest/shulker_box/trap_chest//blast_furnace/furnace/smoker//dispenser/dropper/hopper
# container_bool untags when player does not
# before the execution of following commands, the game will update containr_helper first 
execute unless entity @s[scores={contnr_helper00=0,contnr_helper01=0,contnr_helper02=0,contnr_helper03=0,contnr_helper04=0,contnr_helper05=0,contnr_helper06=0,contnr_helper07=0,contnr_helper08=0,contnr_helper09=0,contnr_helper10=0}] run tag @s add container_bool
execute if entity @s[scores={contnr_helper00=0,contnr_helper01=0,contnr_helper02=0,contnr_helper03=0,contnr_helper04=0,contnr_helper05=0,contnr_helper06=0,contnr_helper07=0,contnr_helper08=0,contnr_helper09=0,contnr_helper10=0}] run tag @s remove container_bool
execute if entity @s[scores={contnr_helper00=1..}] run scoreboard players set @s contnr_helper00 0
execute if entity @s[scores={contnr_helper01=1..}] run scoreboard players set @s contnr_helper01 0
execute if entity @s[scores={contnr_helper02=1..}] run scoreboard players set @s contnr_helper02 0
execute if entity @s[scores={contnr_helper03=1..}] run scoreboard players set @s contnr_helper03 0
execute if entity @s[scores={contnr_helper04=1..}] run scoreboard players set @s contnr_helper04 0
execute if entity @s[scores={contnr_helper05=1..}] run scoreboard players set @s contnr_helper05 0
execute if entity @s[scores={contnr_helper06=1..}] run scoreboard players set @s contnr_helper06 0
execute if entity @s[scores={contnr_helper07=1..}] run scoreboard players set @s contnr_helper07 0
execute if entity @s[scores={contnr_helper08=1..}] run scoreboard players set @s contnr_helper08 0
execute if entity @s[scores={contnr_helper09=1..}] run scoreboard players set @s contnr_helper09 0



########################################
# shield_bool   tags when player is helding shield in main hand or off hand
# shield_bool untags when player is not
# before the execution of following commands, the game will update inventory data first 
execute unless entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:shield"}]},nbt=!{SelectedItem:{id:"minecraft:shield"}}] run tag @s add shield_bool
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:shield"}]},nbt=!{SelectedItem:{id:"minecraft:shield"}}] run tag @s remove shield_bool

########################################
# offGrnd_begin tags when player starts being off-ground
# offGrnd_end   tags when player stops
# before the execution of following commands, the game will update player data OnGround first. We record the time offground in offground helper
execute if entity @s[tag=offGrnd_begin] run tag @s remove offGrnd_begin
execute if entity @s[tag=offGrnd_end  ] run tag @s remove offGrnd_end
execute if entity @s[scores={offGrnd_helper=0},nbt={OnGround:false}] run tag @s add offGrnd_begin
execute if entity @s[scores={offGrnd_helper=1},nbt={OnGround:true }] run tag @s add offGrnd_end 
execute if entity @s[nbt={OnGround:false}] run scoreboard players set @s offGrnd_helper 1
execute if entity @s[nbt={OnGround:true }] run scoreboard players set @s offGrnd_helper 0

########################################
# before the execution of following commands, the game will update SleepTimer first. We store SleepTimer in sleep_helper
execute store result score @s sleep_helper run data get entity @s SleepTimer 1
########################################
# sleep_begin tags when player starts sleeping
# sleep_end   tags when player stops
# before the execution of following commands, the game will update SleepTimer first. We stored SleepTimer in sleep_helper.
execute if entity @s[tag=sleep_begin] run tag @s remove sleep_begin
execute if entity @s[tag=sleep_end  ] run tag @s remove sleep_end
execute if entity @s[scores={sleep_helper=1..},tag=!sleep_bool] run tag @s add sleep_begin
execute if entity @s[scores={sleep_helper=  0},tag= sleep_bool] run tag @s add sleep_end
########################################
# sleep_bool tags   when player is sleeping
# sleep_bool untags when player is not
# before the execution of following commands, the game will update SleepTimer first. We stored SleepTimer in sleep_helper.
execute if entity @s[scores={sleep_helper=1..}] run tag @s add sleep_bool
execute if entity @s[scores={sleep_helper=  0}] run tag @s remove sleep_bool
# since SleepTimer can reset itself, we dont need to reset sleep_helper


########################################
# walk_begin tags when player starts walking
# walk_end   tags when player stops
# the tagging part is in bools_check_continuous
# before the execution of following commands, the game will update walk_helper first 
execute if entity @s[tag=walk_begin] run tag @s remove walk_begin
execute if entity @s[tag=walk_end  ] run tag @s remove walk_end

########################################
# shift_begin tags when player starts pressing shift
# shift_end   tags when player stops
# the tagging part is in bools_check_continuous
# before the execution of following commands, the game will update shift_helper first 
execute if entity @s[tag=shift_begin] run tag @s remove shift_begin
execute if entity @s[tag=shift_end  ] run tag @s remove shift_end

########################################
# sprint_begin tags when player starts sprinting
# sprint_end   tags when player stops
# the tagging part is in bools_check_continuous
# before the execution of following commands, the game will update sprint_helper first 
execute if entity @s[tag=sprint_begin] run tag @s remove sprint_begin
execute if entity @s[tag=sprint_end  ] run tag @s remove sprint_end
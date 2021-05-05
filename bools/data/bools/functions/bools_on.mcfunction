########################################
# Create all the helper variables
scoreboard objectives add walk_helper minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add shift_helper minecraft.custom:minecraft.sneak_time
scoreboard objectives add sprint_helper minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add jump_helper minecraft.custom:minecraft.jump
scoreboard objectives add sleep_helper dummy
scoreboard objectives add offGrnd_helper dummy

scoreboard objectives add carotClik_helper minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add fungiClik_helper minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add fishrClik_helper minecraft.used:minecraft.fishing_rod
scoreboard objectives add bow_helper minecraft.used:minecraft.bow
scoreboard objectives add crossbow_helper minecraft.used:minecraft.crossbow
scoreboard objectives add pearl_helper minecraft.used:minecraft.ender_pearl

scoreboard objectives add contnr_helper00 minecraft.custom:minecraft.open_barrel
scoreboard objectives add contnr_helper01 minecraft.custom:minecraft.open_chest
scoreboard objectives add contnr_helper02 minecraft.custom:minecraft.open_enderchest
scoreboard objectives add contnr_helper03 minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add contnr_helper04 minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add contnr_helper05 minecraft.custom:minecraft.interact_with_blast_furnace
scoreboard objectives add contnr_helper06 minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add contnr_helper07 minecraft.custom:minecraft.interact_with_smoker
scoreboard objectives add contnr_helper08 minecraft.custom:minecraft.inspect_dispenser
scoreboard objectives add contnr_helper09 minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add contnr_helper10 minecraft.custom:minecraft.inspect_hopper
scoreboard players set @a contnr_helper00 0
scoreboard players set @a contnr_helper01 0
scoreboard players set @a contnr_helper02 0
scoreboard players set @a contnr_helper03 0
scoreboard players set @a contnr_helper04 0
scoreboard players set @a contnr_helper05 0
scoreboard players set @a contnr_helper06 0
scoreboard players set @a contnr_helper07 0
scoreboard players set @a contnr_helper08 0
scoreboard players set @a contnr_helper09 0
scoreboard players set @a contnr_helper10 0

########################################
# Create bools_timer variables
scoreboard objectives add bools_timer dummy
scoreboard players set bools_timer bools_timer 1
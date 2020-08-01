
#mgs constants
# init constants
scoreboard objectives add C dummy
scoreboard players set -4 C -4
scoreboard players set -1 C -1
scoreboard players set 0 C 0
scoreboard players set 1 C 1
scoreboard players set 2 C 2
scoreboard players set 5 C 5
scoreboard players set 10 C 10
scoreboard players set 100 C 100
scoreboard players set midprime C 73417
scoreboard players set bigprime C 2379673
scoreboard players set 1000 C 1000
scoreboard players set 10000 C 10000
scoreboard players add SID C 0


scoreboard objectives add bulletrange dummy
scoreboard objectives add accu dummy
scoreboard objectives add aim dummy
scoreboard objectives add spin dummy
scoreboard objectives add right_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add b_rifle dummy
scoreboard objectives add b_smg dummy
scoreboard objectives add b_shot dummy
scoreboard objectives add b_sniper dummy
scoreboard objectives add b_energy dummy
scoreboard objectives add b_mini dummy
scoreboard objectives add playerID dummy
scoreboard objectives add health health
scoreboard objectives add damage dummy
scoreboard objectives add hit_by dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add Kills playerKillCount
scoreboard objectives add cooldown dummy
scoreboard objectives add reload dummy
scoreboard objectives add ammo dummy
scoreboard objectives add recoil dummy
scoreboard objectives add r_cooldown dummy
scoreboard objectives add spread dummy
scoreboard objectives add spread_id dummy
scoreboard objectives add tracer dummy

scoreboard objectives add r dummy
scoreboard objectives add h dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy

# init variables
scoreboard objectives add V dummy
scoreboard players set v0 V 0
scoreboard players set v1 V 0
scoreboard players set v2 V 0
scoreboard players set v3 V 0
scoreboard players set v4 V 0
scoreboard players set v5 V 0
scoreboard players set v6 V 0
scoreboard players set v7 V 0
scoreboard players set v8 V 0
scoreboard players set v9 V 0
scoreboard players set v10 V 0
scoreboard players set v11 V 0
scoreboard players set v12 V 0
scoreboard players set v13 V 0
scoreboard players set v14 V 0
scoreboard players set v15 V 0
scoreboard players add rand V 0
scoreboard players add randraw V 0
scoreboard players add time V 0

# init Session ID
function games:gun/core/util/random
scoreboard objectives add SID dummy
scoreboard players operation SID C = randraw V

# core/init/reset pseudo-Unique IDs
scoreboard objectives remove UID
scoreboard objectives add UID dummy
scoreboard players set _uid_ptr UID 1
scoreboard players set _default UID 0

#box
setblock -1314 20 -1781 minecraft:shulker_box
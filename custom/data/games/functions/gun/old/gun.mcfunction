######################GUNS##########################
#1 autorifle: bullet b_auto; b_ar
#2 SMG: bullet b_auto; b_smg
#3 silenced autorifle: bullet b_auto_silenced; b_ar
#4 silenced SMG: bullet b_auto_silenced; b_smg
#5 shotgun: bullet b_shot
#6 rocket: rocket b_rocket
#7 buildergun: bullet builder buildergun
#8 eraser: bullet builder eraser
#9 minigun
#10 plasma gun
#11 new rifle
####################################################

######################@summon bullet

########################################################################new
#11
#execute at @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{rifle:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Tags:["bullet","b_auto","new"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

########################################################################new

#1
execute at @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:0}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:200,Tags:["bullet","b_auto"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#2
execute at @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:0}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:200,Tags:["bullet","b_auto"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#3
execute at @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:1b,silenced:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.0001 {Duration:200,Tags:["bullet","b_auto_silenced"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#4
execute at @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:1b,silenced:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","b_auto_silenced"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#5

####1
execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","b_shot","shot1"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot1,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot1,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot1,limit=1,sort=nearest] run tp @e[tag=shot1,limit=1,sort=nearest] ~ ~ ~ facing ^-1.6 ^-0.3 ^40


####2
execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","b_shot","shot2"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot2,limit=1,sort=nearest] run tp @e[tag=shot2,limit=1,sort=nearest] ~ ~ ~ facing ^-1.1 ^0.5 ^40

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot2,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot2,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

####3
execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","b_shot","shot3"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot3,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot3,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot3,limit=1,sort=nearest] run tp @e[tag=shot3,limit=1,sort=nearest] ~ ~ ~ facing ^0.9 ^0.8 ^40



####4
execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","b_shot","shot4"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot4,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot4,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot4,limit=1,sort=nearest] run tp @e[tag=shot4,limit=1,sort=nearest] ~ ~ ~ facing ^-1 ^0.8 ^40



####5
execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","b_shot","shot5"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot5,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot5,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot5,limit=1,sort=nearest] run tp @e[tag=shot5,limit=1,sort=nearest] ~ ~ ~ facing ^1 ^0.6 ^40


####6
execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","b_shot","shot6"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}


execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot6,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot6,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=shot6,limit=1,sort=nearest] run tp @e[tag=shot6,limit=1,sort=nearest] ~ ~ ~ facing ^0.7 ^0.6 ^40

#6
execute at @a[scores={shoot_auto=1,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["rocket","b_rocket"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#7
execute at @a[scores={shoot_auto=1},nbt={SelectedItem:{tag:{buildergun:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","builder","buildergun"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#8
execute at @a[scores={shoot_auto=1},nbt={SelectedItem:{tag:{eraser:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","builder","eraser"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#9
execute at @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","b_auto"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#10
execute at @a[scores={shoot_auto=1,b_pl=1..},nbt={SelectedItem:{tag:{plasma:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Duration:200,Tags:["bullet","plasma"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}


######################@@bullet face player

########################################################################new

####score

execute at @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{rifle:1b}}}] run summon minecraft:area_effect_cloud ^ ^ ^0.4 {Duration:200,Tags:["bullet","b_auto","new"],NoGravity:1b,Invisible:1b,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#11
#execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{rifle:1b}}}] at @s at @e[tag=new,limit=1,sort=nearest] run scoreboard players add @e[tag=new,limit=1,sort=nearest] bulletcount 20

#execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{rifle:1b}}}] at @s at @e[tag=new,limit=1,sort=nearest] run tp @e[tag=new,limit=1,sort=nearest] ~ ~ ~ facing entity @s

#execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{rifle:1b}}}] at @s at @e[tag=new,limit=1,sort=nearest] run tp @e[tag=new,limit=1,sort=nearest] ~ ~1.6 ~

#bullet shoot

#execute at @e[tag=new,sort=nearest,scores={bulletcount=2..}] run summon minecraft:area_effect_cloud ^ ^ ^-8 {Tags:["bullet","b_auto","new"],NoGravity:1b,Invisible:0,Marker:1b,OnGround:0,NoBasePlate:1b,move:1b}

#scoreboard players add @e[tag=new,sort=nearest] bulletcount 0

#scoreboard players add @e[tag=new,sort=nearest] bulletshoot 0

#scoreboard players add @e[tag=new,sort=nearest,scores={bulletcount=2..}] bulletshoot 1


#scoreboard players remove @e[tag=new,scores={bulletcount=1..,bulletshoot=1..}] bulletcount 1


#execute as @e[tag=new,sort=nearest,scores={bulletcount=1..,bulletshoot=1..}] at @s at @e[tag=new,limit=1,sort=nearest,scores={bulletcount=0,bulletshoot=0}] run tp @e[tag=new,limit=1,sort=nearest,scores={bulletcount=0,bulletshoot=0}] ~ ~ ~ facing entity @s

#execute as @e[tag=new,scores={bulletcount=1..,bulletshoot=1..}] at @s at @e[tag=new,limit=1,sort=nearest,scores={bulletcount=0,bulletshoot=0}] run scoreboard players operation @e[tag=new,limit=1,sort=nearest,scores={bulletcount=0,bulletshoot=0}] bulletcount = @s bulletcount

#scoreboard players add @e[type= minecraft:area_effect_cloud,tag=new,scores={bulletcount=1..,bulletshoot=1..}] bulletrange 55

#scoreboard players set @e[tag=new,sort=nearest,scores={bulletcount=1..,bulletshoot=1..}] bulletcount 0
########################################################################new

#10
execute as @a[scores={shoot_auto=1,b_pl=1..},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_pl=1..},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~


#1 3 7 8
execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

#6
execute as @a[scores={shoot_auto=1,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] at @s at @e[tag=rocket,limit=1,sort=nearest] run tp @e[tag=rocket,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] at @s at @e[tag=rocket,limit=1,sort=nearest] run tp @e[tag=rocket,limit=1,sort=nearest] ~ ~1.6 ~

#2 4
execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

#9
execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.2 ~

#5
execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~

#7 8
execute as @a[scores={shoot_auto=1},nbt={SelectedItem:{tag:{builder:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~ ~ facing entity @s

execute as @a[scores={shoot_auto=1},nbt={SelectedItem:{tag:{builder:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run tp @e[tag=bullet,limit=1,sort=nearest] ~ ~1.6 ~


######################@@sign name
#1 2 3 4 5 7 8 9
execute as @a[scores={shoot_auto=1},nbt={SelectedItem:{tag:{gun:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run scoreboard players operation @e[tag=bullet,limit=1,sort=nearest] playerID = @s playerID
#6
execute as @a[scores={shoot_auto=1},nbt={SelectedItem:{tag:{gun:1b}}}] at @s at @e[tag=bullet,limit=1,sort=nearest] run scoreboard players operation @e[tag=rocket,limit=1,sort=nearest] playerID = @s playerID

######################@@sound

#1

execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:0}}}] at @s if score @s shoot_auto matches 1.. run playsound minecraft:entity.firework_rocket.large_blast_far ambient @a ~ ~ ~ 3 2

#2
execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:0}}}] at @s if score @s shift matches 1.. run playsound minecraft:entity.firework_rocket.blast_far ambient @a ~ ~ ~ 3 2

#3
execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:1b,silenced:1b}}}] at @s if score @s shoot_auto matches 1.. run playsound minecraft:entity.player.small_fall ambient @a ~ ~ ~ 1.7 2

#4
execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:1b,silenced:1b}}}] at @s if score @s shift matches 1.. run playsound minecraft:block.wood.break ambient @a ~ ~ ~ 1.2 2

#5
execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] at @s if score @s shoot_auto matches 1.. run playsound minecraft:entity.firework_rocket.large_blast_far ambient @a ~ ~ ~ 3 2

execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] at @s if score @s shoot_auto matches 1.. run playsound minecraft:entity.blaze.hurt ambient @a ~ ~ ~ 3 2

#6
execute as @a[scores={shoot_auto=1,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] at @s if score @s shoot_auto matches 1.. run playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ 3 1.5

#7 8
execute as @a[scores={shoot_auto=1},nbt={SelectedItem:{tag:{builder:1b}}}] at @s if score @s shoot_auto matches 1.. run playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 3 1

#10
execute as @a[scores={shoot_auto=1,b_pl=1..},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s if score @s shoot_auto matches 1.. run playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~ 3 1

#9
execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s if score @s shift matches 1.. run playsound minecraft:entity.firework_rocket.shoot ambient @a ~ ~ ~ 3 2

execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s if score @s shift matches 1.. run playsound minecraft:entity.firework_rocket.twinkle_far ambient @a ~ ~ ~ 3 2

execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s if score @s shift matches 1.. run playsound minecraft:entity.firework_rocket.large_blast_far ambient @a ~ ~ ~ 3 2

execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s if score @s shift matches 1.. run playsound minecraft:entity.firework_rocket.blast ambient @a ~ ~ ~ 3 2

######################@@flame and smoke of gun

#1
execute at @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:0}}}] run particle minecraft:flame ^-0.2 ^1.2 ^1 0.1 0.1 0.1 100 5


execute at @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:0}}}] run particle minecraft:poof ^-0.4 ^1.3 ^1.5 0.1 0.1 0.1 0.05 1

#2
execute at @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:0}}}] run particle minecraft:flame ^-0.2 ^1.2 ^1 0.1 0.1 0.1 100 1

execute at @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:0}}}] run particle minecraft:poof ^-0.4 ^1.3 ^1.5 0.1 0.1 0.1 0.05 1

#3
execute at @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:1b,silenced:1b}}}] run particle minecraft:flame ^-0.2 ^1.2 ^1 0.1 0.1 0.1 100 2

#4
execute at @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:1b,silenced:1b}}}] run particle minecraft:flame ^-0.2 ^1.2 ^1 0.1 0.1 0.1 100 1

#5
execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0,CustomModelData:5}}}] run particle minecraft:angry_villager ^-0.4 ^1.1 ^0.8 0.1 0.1 0.1 100 2


execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0,CustomModelData:5}}}] run particle minecraft:poof ^-0.2 ^1.3 ^1.5 0.1 0.1 0.1 0.1 3

execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0,CustomModelData:7}}}] run particle minecraft:angry_villager ^ ^1 ^0.8 0.1 0.1 0.1 100 2


execute at @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0,CustomModelData:7}}}] run particle minecraft:poof ^ ^1.3 ^1.5 0.1 0.1 0.1 0.1 3

#6
execute at @a[scores={shoot_auto=1,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] run particle minecraft:angry_villager ^-0.2 ^1.2 ^1 0.1 0.1 0.1 100 6

execute at @a[scores={shoot_auto=1,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] run particle minecraft:poof ^-0.2 ^1.3 ^1.5 0.1 0.1 0.1 0.05 30

#7 8
execute at @a[scores={shoot_auto=1},nbt={SelectedItem:{tag:{builder:1b}}}] run particle minecraft:dripping_lava ^-0.2 ^1.2 ^1 0.5 0.5 0.5 0.0001 30

#10
execute at @a[scores={shoot_auto=1,b_pl=1..},nbt={SelectedItem:{tag:{plasma:1b}}}] run particle minecraft:dripping_lava ^-0.2 ^1.2 ^1 0.3 0.3 0.3 0.0001 30

#9
execute at @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] run particle minecraft:flame ^-0.2 ^1.2 ^1 0.1 0.1 0.1 100 5


execute at @a[scores={shift=1..,b_mini=1..,minispin=15..,recoil=1},nbt={SelectedItem:{tag:{minigun:1b}}}] run particle minecraft:poof ^-0.4 ^1.1 ^1.5 0.3 0.2 0.3 0.1 1

#smoke
execute at @a[scores={shoot_auto=1,recoil=1..},nbt={SelectedItem:{tag:{gun:1b}}}] run particle minecraft:mycelium ^-0.2 ^1.3 ^1.5 0.1 0.1 0.1 2 10

######################@@recoil###################################################

###########count
#1 3
execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] run scoreboard players add @s recoil 5

#2 4
execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b}}}] run scoreboard players add @s recoil 5

#10
execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] run scoreboard players add @s recoil 2

execute as @a[scores={shift=1..,b_mini=1..,minispin=15..,recoil=1},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s run tp @s ~ ~ ~ facing ^-0.05 ^1 ^40

execute as @a[scores={shift=1..,b_mini=1..,minispin=15..,recoil=3..},nbt={SelectedItem:{tag:{minigun:1b}}}] run scoreboard players set @s recoil 0

###########@@view move

#######################
#1
#execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:0}}}] at @s run tp @s ~ ~ ~ facing ^0.4 ^0.8 ^40

#2
#execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:0}}}] at @s run tp @s ~ ~ ~ facing ^0.2 ^0.6 ^40
#3
#execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b,addon:1b,silenced:1b}}}] at @s run tp @s ~ ~ ~ facing ^0.7 ^0.9 ^40
#4
#execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b,addon:1b,silenced:1b}}}] at @s run tp @s ~ ~ ~ facing ^0.4 ^0.7 ^40

#5
execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,addon:0}}}] at @s run tp @s ~ ~ ~ facing ^0.4 ^4 ^40
#6
execute as @a[scores={shoot_auto=1,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] at @s run tp @s ~ ~ ~ facing ^0.4 ^4 ^40

#9
execute as @a[scores={shift=2..,b_mini=1..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s run tp @s ~ ~ ~ facing ^ ^0.1 ^40

#10
execute as @a[scores={shoot_auto=1..,b_pl=1..},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s run tp @s ~ ~ ~ facing ^ ^0.3 ^40

#mini
execute as @a[scores={shift=1..,b_mini=1..,minispin=15..,recoil=1},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s run tp @s ~ ~ ~ facing ^-0.05 ^1 ^40

######################

######################@@recoil part
#1 3
execute as @a[scores={shoot_auto=1,b_ar=1..,recoil=0..7},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] at @s run tp @s ~ ~ ~ facing ^0.3 ^0.7 ^40

execute as @a[scores={shoot_auto=1,b_ar=1..,recoil=8..11},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] at @s run tp @s ~ ~ ~ facing ^-0.2 ^0.4 ^40

execute as @a[scores={shoot_auto=1,b_ar=1..,recoil=12..15},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] at @s run tp @s ~ ~ ~ facing ^-0.3 ^0.9 ^40

execute as @a[scores={shoot_auto=1,b_ar=1..,recoil=15..19},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] at @s run tp @s ~ ~ ~ facing ^0.6 ^1.8 ^40

execute as @a[scores={shoot_auto=1,b_ar=1..,recoil=20..},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] at @s run tp @s ~ ~ ~ facing ^0.7 ^2.3 ^40

#2 4
execute as @a[scores={shift=1..,b_smg=1..,recoil=0..7},nbt={SelectedItem:{tag:{smg:1b}}}] at @s run tp @s ~ ~ ~ facing ^ ^0.2 ^40

execute as @a[scores={shift=1..,b_smg=1..,recoil=8..11},nbt={SelectedItem:{tag:{smg:1b}}}] at @s run tp @s ~ ~ ~ facing ^-0.3 ^0.1 ^40

execute as @a[scores={shift=1..,b_smg=1..,recoil=12..15},nbt={SelectedItem:{tag:{smg:1b}}}] at @s run tp @s ~ ~ ~ facing ^0.3 ^0.1 ^40

execute as @a[scores={shift=1..,b_smg=1..,recoil=16..19},nbt={SelectedItem:{tag:{smg:1b}}}] at @s run tp @s ~ ~ ~ facing ^-0.2 ^0.3 ^40

execute as @a[scores={shift=1..,b_smg=1..,recoil=20..},nbt={SelectedItem:{tag:{smg:1b}}}] at @s run tp @s ~ ~ ~ facing ^-0.3 ^0.3 ^40


#################################

#reduce score recoil
#1 2 3 4
execute as @a[scores={recoil=1..}] run scoreboard players remove @s[scores={role=..19}] recoil 1

#set 0 if negative
execute as @a[scores={recoil=..-1}] run scoreboard players set @s[scores={role=..19}] recoil 0

#set 30 if above 15
execute as @a[scores={recoil=20..,role=0..7}] run scoreboard players set @s[scores={role=..19}] recoil 20
execute as @a[scores={recoil=20..,role=9..}] run scoreboard players set @s[scores={role=..19}] recoil 20

#############################################################################


##################smg speed effect
execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b}}}] run effect give @s minecraft:speed 1 10 true
execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b}}}] run scoreboard players add @s aim 1
##################################


######################@@reduce ammo


#10
execute as @a[scores={shoot_auto=1,b_pl=1..},nbt={SelectedItem:{tag:{plasma:1b}}}] run scoreboard players remove @s b_pl 1

#1 3
execute as @a[scores={shoot_auto=1,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] run scoreboard players remove @s b_ar 1

#2 4
execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b}}}] run scoreboard players remove @s b_smg 1

#5
execute as @a[scores={shoot_auto=1,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] run scoreboard players remove @s b_s 1

#6
execute as @a[scores={shoot_auto=1,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] run scoreboard players remove @s b_rocket 1

#9
execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] run scoreboard players remove @s b_mini 1

######################@@no ammo click

#10
execute as @a[scores={shoot_auto=1,b_pl=0},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 0.1 0.5

execute as @a[scores={shoot_auto=1,b_pl=0},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s run particle minecraft:dripping_lava ^-0.2 ^1.2 ^1 0.1 0.1 0.1 0.0001 3

execute as @a[scores={shoot_auto=1,b_pl=0},nbt={SelectedItem:{tag:{plasma:1b}}}] at @s run particle minecraft:smoke ^-0.2 ^1.2 ^1 0.1 0.1 0.1 0.01 2

#1 3
execute as @a[scores={shoot_auto=1,b_ar=0},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] at @s run playsound minecraft:block.stone_pressure_plate.click_on ambient @a ~ ~ ~ 1.1 2

#2 4
execute as @a[scores={shift=1..,b_smg=0},nbt={SelectedItem:{tag:{smg:1b}}}] at @s run playsound minecraft:block.stone_pressure_plate.click_off ambient @a ~ ~ ~ 1.1 2

#5
execute as @a[scores={shoot_auto=1,b_s=0},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s run playsound minecraft:block.stone_pressure_plate.click_off ambient @a ~ ~ ~ 1.1 2

#6
execute as @a[scores={shoot_auto=1,b_rocket=0},nbt={SelectedItem:{tag:{rocket:1b}}}] at @s run playsound minecraft:block.stone_pressure_plate.click_off ambient @a ~ ~ ~ 1.1 2

#################mini################

################knock back
#execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s run tp @s ^ ^ ^-0.1

execute as @a[scores={shift=1..,b_mini=1..,minispin=15..},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s run tp @s ^ ^0.1 ^

#####aim
#9
execute as @a[scores={shoot_auto=1..},nbt={SelectedItem:{tag:{fullauto:1b}}}] run effect give @s minecraft:slowness 1 4 true

#add aim
execute as @a[scores={shoot_auto=1..},nbt={SelectedItem:{tag:{fullauto:1b}}}] run scoreboard players add @s aim 2

#remove aim
execute as @a[scores={shoot_auto=0,aim=1..},nbt={SelectedItem:{tag:{fullauto:1b}}}] run scoreboard players remove @s aim 1

#clear aim
execute as @a[scores={shoot_auto=0,aim=1..},nbt={SelectedItem:{tag:{fullauto:1b}}}] run effect clear @s minecraft:slowness

#####spin
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{minigun:1b}}}] run scoreboard players add @s minispin 1

execute as @a[scores={minispin=15..}] run scoreboard players set @s minispin 15

execute as @a[scores={minispin=1..,shift=0}] run scoreboard players remove @s minispin 1

#spin sound
execute as @a[scores={minispin=1..}] at @s run playsound minecraft:entity.enderman.death ambient @a ~ ~ ~ 0.04 1.6

#####################################


######################@@ reset shoot
#1 3 5 6 7 8
execute as @a[nbt={SelectedItem:{tag:{gun:1b}}}] if score @s shoot_auto matches 1.. run scoreboard players reset @s shoot_auto

#execute as @a[nbt={SelectedItem:{tag:{rocket:1b}}}] if score @s shoot_auto matches 1.. run scoreboard players reset @s shoot_auto


#execute as @a[nbt={SelectedItem:{tag:{shotgun:1b}}}] if score @s shoot_auto matches 1.. run scoreboard players reset @s shoot_auto

#execute as @a[nbt={SelectedItem:{tag:{builder:1b}}}] if score @s shoot_auto matches 1.. run scoreboard players reset @s shoot_auto

#execute as @a[nbt={SelectedItem:{tag:{minigun:1b}}}] if score @s shoot_auto matches 1.. run scoreboard players reset @s shoot_auto

######################@@ aim
#1 3
execute as @a[scores={shift=1..,b_ar=1..},nbt={SelectedItem:{tag:{auto_rifle:1b}}}] run effect give @s minecraft:slowness 1 5 true

#2 4

#execute as @a[scores={shift=1..,b_smg=1..},nbt={SelectedItem:{tag:{smg:1b}}}] run effect give @s minecraft:slowness 1 3 true

#5
execute as @a[scores={shift=1..,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b}}}] run effect give @s minecraft:slowness 1 2 true

execute as @a[scores={shift=1..,b_s=1..},nbt={SelectedItem:{tag:{shotgun:1b,CustomModelData:5}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"double barrel shotgun\"}",Lore:["A powerful short range weapon with only two ammo."]},gun:1b,shotgun:1b,addon:0,CustomModelData:7}

#6
execute as @a[scores={shift=1..,b_rocket=1..},nbt={SelectedItem:{tag:{rocket:1b}}}] run effect give @s minecraft:slowness 1 10 true

#10
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{plasma:1b}}}] run effect give @s minecraft:slowness 1 3 true

#add aim
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{gun:1b}}}] run scoreboard players add @s aim 1

#remove aim
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{gun:1b}}}] run scoreboard players remove @s aim 1

#limit aim
execute as @a[scores={aim=3..}] run scoreboard players set @s aim 3

#clear aim
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{gun:1b}}}] run effect clear @s minecraft:slowness

#remove aim model

###5
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{shotgun:1b,CustomModelData:7}}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"double barrel shotgun\"}",Lore:["A powerful short range weapon with only two ammo."]},gun:1b,shotgun:1b,addon:0,CustomModelData:5}

#clear sneak speed boost smg
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{smg:1b}}}] run effect clear @s minecraft:speed

######################player id
execute if entity @a[scores={playerID=0}] run function games:gun/set_playerid

######################

######################

######################

######################

######################
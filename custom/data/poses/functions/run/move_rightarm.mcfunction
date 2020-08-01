#get score and put to positive value
execute store result score @s as_ra0 run data get entity @s Pose.RightArm[0]
execute store result score @s as_ra1 run data get entity @s Pose.RightArm[1]
execute store result score @s as_ra2 run data get entity @s Pose.RightArm[2]

scoreboard players set @s _var00 360
scoreboard players set @s _var01 180
scoreboard players operation @s[scores={as_ra0=..-1}] as_ra0 += @s _var00
scoreboard players operation @s[scores={as_ra1=..-1}] as_ra1 += @s _var00
scoreboard players operation @s[scores={as_ra2=..-1}] as_ra2 += @s _var00


#get smallest distance
execute if score @s as_ra0 >= @s as_ra0_p run scoreboard players operation @s _var02 = @s as_ra0
execute if score @s as_ra0 >= @s as_ra0_p run scoreboard players operation @s _var02 -= @s as_ra0_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ra0 -= @s _var00
execute if score @s as_ra0 < @s as_ra0_p run scoreboard players operation @s _var02 = @s as_ra0_p
execute if score @s as_ra0 < @s as_ra0_p run scoreboard players operation @s _var02 -= @s as_ra0
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ra0_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_ra1 >= @s as_ra1_p run scoreboard players operation @s _var02 = @s as_ra1
execute if score @s as_ra1 >= @s as_ra1_p run scoreboard players operation @s _var02 -= @s as_ra1_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ra1 -= @s _var00
execute if score @s as_ra1 < @s as_ra1_p run scoreboard players operation @s _var02 = @s as_ra1_p
execute if score @s as_ra1 < @s as_ra1_p run scoreboard players operation @s _var02 -= @s as_ra1
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ra1_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_ra2 >= @s as_ra2_p run scoreboard players operation @s _var02 = @s as_ra2
execute if score @s as_ra2 >= @s as_ra2_p run scoreboard players operation @s _var02 -= @s as_ra2_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ra2 -= @s _var00
execute if score @s as_ra2 < @s as_ra2_p run scoreboard players operation @s _var02 = @s as_ra2_p
execute if score @s as_ra2 < @s as_ra2_p run scoreboard players operation @s _var02 -= @s as_ra2
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ra2_p -= @s _var00
scoreboard players reset @s _var02

#calculate rotation
scoreboard players operation @s _var02 = @s as_ra0_p
scoreboard players operation @s _var02 -= @s as_ra0
scoreboard players operation @s _var02 /= @s as_ra_t
scoreboard players operation @s as_ra0 += @s _var02

scoreboard players operation @s _var02 = @s as_ra1_p
scoreboard players operation @s _var02 -= @s as_ra1
scoreboard players operation @s _var02 /= @s as_ra_t
scoreboard players operation @s as_ra1 += @s _var02

scoreboard players operation @s _var02 = @s as_ra2_p
scoreboard players operation @s _var02 -= @s as_ra2
scoreboard players operation @s _var02 /= @s as_ra_t
scoreboard players operation @s as_ra2 += @s _var02


#set new pose
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s as_ra0
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s as_ra1
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players get @s as_ra2

#update scores
scoreboard players remove @s as_ra_t 1

#if asp < 360 then + 360
scoreboard players operation @s[scores={as_ra0_p=..-1}] as_ra0_p += @s _var00
scoreboard players operation @s[scores={as_ra1_p=..-1}] as_ra1_p += @s _var00
scoreboard players operation @s[scores={as_ra2_p=..-1}] as_ra2_p += @s _var00

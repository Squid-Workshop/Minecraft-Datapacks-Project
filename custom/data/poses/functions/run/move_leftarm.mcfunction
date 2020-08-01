#get score and put to positive value
execute store result score @s as_la0 run data get entity @s Pose.LeftArm[0]
execute store result score @s as_la1 run data get entity @s Pose.LeftArm[1]
execute store result score @s as_la2 run data get entity @s Pose.LeftArm[2]

scoreboard players set @s _var00 360
scoreboard players set @s _var01 180
scoreboard players operation @s[scores={as_la0=..-1}] as_la0 += @s _var00
scoreboard players operation @s[scores={as_la1=..-1}] as_la1 += @s _var00
scoreboard players operation @s[scores={as_la2=..-1}] as_la2 += @s _var00


#get smallest distance
execute if score @s as_la0 >= @s as_la0_p run scoreboard players operation @s _var02 = @s as_la0
execute if score @s as_la0 >= @s as_la0_p run scoreboard players operation @s _var02 -= @s as_la0_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_la0 -= @s _var00
execute if score @s as_la0 < @s as_la0_p run scoreboard players operation @s _var02 = @s as_la0_p
execute if score @s as_la0 < @s as_la0_p run scoreboard players operation @s _var02 -= @s as_la0
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_la0_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_la1 >= @s as_la1_p run scoreboard players operation @s _var02 = @s as_la1
execute if score @s as_la1 >= @s as_la1_p run scoreboard players operation @s _var02 -= @s as_la1_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_la1 -= @s _var00
execute if score @s as_la1 < @s as_la1_p run scoreboard players operation @s _var02 = @s as_la1_p
execute if score @s as_la1 < @s as_la1_p run scoreboard players operation @s _var02 -= @s as_la1
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_la1_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_la2 >= @s as_la2_p run scoreboard players operation @s _var02 = @s as_la2
execute if score @s as_la2 >= @s as_la2_p run scoreboard players operation @s _var02 -= @s as_la2_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_la2 -= @s _var00
execute if score @s as_la2 < @s as_la2_p run scoreboard players operation @s _var02 = @s as_la2_p
execute if score @s as_la2 < @s as_la2_p run scoreboard players operation @s _var02 -= @s as_la2
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_la2_p -= @s _var00
scoreboard players reset @s _var02

#calculate rotation
scoreboard players operation @s _var02 = @s as_la0_p
scoreboard players operation @s _var02 -= @s as_la0
scoreboard players operation @s _var02 /= @s as_la_t
scoreboard players operation @s as_la0 += @s _var02

scoreboard players operation @s _var02 = @s as_la1_p
scoreboard players operation @s _var02 -= @s as_la1
scoreboard players operation @s _var02 /= @s as_la_t
scoreboard players operation @s as_la1 += @s _var02

scoreboard players operation @s _var02 = @s as_la2_p
scoreboard players operation @s _var02 -= @s as_la2
scoreboard players operation @s _var02 /= @s as_la_t
scoreboard players operation @s as_la2 += @s _var02


#set new pose
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s as_la0
execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get @s as_la1
execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players get @s as_la2

#update scores
scoreboard players remove @s as_la_t 1

#if asp < 360 then + 360
scoreboard players operation @s[scores={as_la0_p=..-1}] as_la0_p += @s _var00
scoreboard players operation @s[scores={as_la1_p=..-1}] as_la1_p += @s _var00
scoreboard players operation @s[scores={as_la2_p=..-1}] as_la2_p += @s _var00

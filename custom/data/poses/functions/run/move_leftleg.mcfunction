#get score and put to positive value
execute store result score @s as_ll0 run data get entity @s Pose.LeftLeg[0]
execute store result score @s as_ll1 run data get entity @s Pose.LeftLeg[1]
execute store result score @s as_ll2 run data get entity @s Pose.LeftLeg[2]

scoreboard players set @s _var00 360
scoreboard players set @s _var01 180
scoreboard players operation @s[scores={as_ll0=..-1}] as_ll0 += @s _var00
scoreboard players operation @s[scores={as_ll1=..-1}] as_ll1 += @s _var00
scoreboard players operation @s[scores={as_ll2=..-1}] as_ll2 += @s _var00


#get smallest distance
execute if score @s as_ll0 >= @s as_ll0_p run scoreboard players operation @s _var02 = @s as_ll0
execute if score @s as_ll0 >= @s as_ll0_p run scoreboard players operation @s _var02 -= @s as_ll0_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ll0 -= @s _var00
execute if score @s as_ll0 < @s as_ll0_p run scoreboard players operation @s _var02 = @s as_ll0_p
execute if score @s as_ll0 < @s as_ll0_p run scoreboard players operation @s _var02 -= @s as_ll0
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ll0_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_ll1 >= @s as_ll1_p run scoreboard players operation @s _var02 = @s as_ll1
execute if score @s as_ll1 >= @s as_ll1_p run scoreboard players operation @s _var02 -= @s as_ll1_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ll1 -= @s _var00
execute if score @s as_ll1 < @s as_ll1_p run scoreboard players operation @s _var02 = @s as_ll1_p
execute if score @s as_ll1 < @s as_ll1_p run scoreboard players operation @s _var02 -= @s as_ll1
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ll1_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_ll2 >= @s as_ll2_p run scoreboard players operation @s _var02 = @s as_ll2
execute if score @s as_ll2 >= @s as_ll2_p run scoreboard players operation @s _var02 -= @s as_ll2_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ll2 -= @s _var00
execute if score @s as_ll2 < @s as_ll2_p run scoreboard players operation @s _var02 = @s as_ll2_p
execute if score @s as_ll2 < @s as_ll2_p run scoreboard players operation @s _var02 -= @s as_ll2
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_ll2_p -= @s _var00
scoreboard players reset @s _var02

#calculate rotation
scoreboard players operation @s _var02 = @s as_ll0_p
scoreboard players operation @s _var02 -= @s as_ll0
scoreboard players operation @s _var02 /= @s as_ll_t
scoreboard players operation @s as_ll0 += @s _var02

scoreboard players operation @s _var02 = @s as_ll1_p
scoreboard players operation @s _var02 -= @s as_ll1
scoreboard players operation @s _var02 /= @s as_ll_t
scoreboard players operation @s as_ll1 += @s _var02

scoreboard players operation @s _var02 = @s as_ll2_p
scoreboard players operation @s _var02 -= @s as_ll2
scoreboard players operation @s _var02 /= @s as_ll_t
scoreboard players operation @s as_ll2 += @s _var02


#set new pose
execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s as_ll0
execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s as_ll1
execute store result entity @s Pose.LeftLeg[2] float 1 run scoreboard players get @s as_ll2

#update scores
scoreboard players remove @s as_ll_t 1

#if asp < 360 then + 360
scoreboard players operation @s[scores={as_ll0_p=..-1}] as_ll0_p += @s _var00
scoreboard players operation @s[scores={as_ll1_p=..-1}] as_ll1_p += @s _var00
scoreboard players operation @s[scores={as_ll2_p=..-1}] as_ll2_p += @s _var00

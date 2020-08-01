#get score and put to positive value
execute store result score @s as_rl0 run data get entity @s Pose.RightLeg[0]
execute store result score @s as_rl1 run data get entity @s Pose.RightLeg[1]
execute store result score @s as_rl2 run data get entity @s Pose.RightLeg[2]

scoreboard players set @s _var00 360
scoreboard players set @s _var01 180
scoreboard players operation @s[scores={as_rl0=..-1}] as_rl0 += @s _var00
scoreboard players operation @s[scores={as_rl1=..-1}] as_rl1 += @s _var00
scoreboard players operation @s[scores={as_rl2=..-1}] as_rl2 += @s _var00


#get smallest distance
execute if score @s as_rl0 >= @s as_rl0_p run scoreboard players operation @s _var02 = @s as_rl0
execute if score @s as_rl0 >= @s as_rl0_p run scoreboard players operation @s _var02 -= @s as_rl0_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_rl0 -= @s _var00
execute if score @s as_rl0 < @s as_rl0_p run scoreboard players operation @s _var02 = @s as_rl0_p
execute if score @s as_rl0 < @s as_rl0_p run scoreboard players operation @s _var02 -= @s as_rl0
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_rl0_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_rl1 >= @s as_rl1_p run scoreboard players operation @s _var02 = @s as_rl1
execute if score @s as_rl1 >= @s as_rl1_p run scoreboard players operation @s _var02 -= @s as_rl1_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_rl1 -= @s _var00
execute if score @s as_rl1 < @s as_rl1_p run scoreboard players operation @s _var02 = @s as_rl1_p
execute if score @s as_rl1 < @s as_rl1_p run scoreboard players operation @s _var02 -= @s as_rl1
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_rl1_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_rl2 >= @s as_rl2_p run scoreboard players operation @s _var02 = @s as_rl2
execute if score @s as_rl2 >= @s as_rl2_p run scoreboard players operation @s _var02 -= @s as_rl2_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_rl2 -= @s _var00
execute if score @s as_rl2 < @s as_rl2_p run scoreboard players operation @s _var02 = @s as_rl2_p
execute if score @s as_rl2 < @s as_rl2_p run scoreboard players operation @s _var02 -= @s as_rl2
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_rl2_p -= @s _var00
scoreboard players reset @s _var02

#calculate rotation
scoreboard players operation @s _var02 = @s as_rl0_p
scoreboard players operation @s _var02 -= @s as_rl0
scoreboard players operation @s _var02 /= @s as_rl_t
scoreboard players operation @s as_rl0 += @s _var02

scoreboard players operation @s _var02 = @s as_rl1_p
scoreboard players operation @s _var02 -= @s as_rl1
scoreboard players operation @s _var02 /= @s as_rl_t
scoreboard players operation @s as_rl1 += @s _var02

scoreboard players operation @s _var02 = @s as_rl2_p
scoreboard players operation @s _var02 -= @s as_rl2
scoreboard players operation @s _var02 /= @s as_rl_t
scoreboard players operation @s as_rl2 += @s _var02


#set new pose
execute store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s as_rl0
execute store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s as_rl1
execute store result entity @s Pose.RightLeg[2] float 1 run scoreboard players get @s as_rl2

#update scores
scoreboard players remove @s as_rl_t 1

#if asp < 360 then + 360
scoreboard players operation @s[scores={as_rl0_p=..-1}] as_rl0_p += @s _var00
scoreboard players operation @s[scores={as_rl1_p=..-1}] as_rl1_p += @s _var00
scoreboard players operation @s[scores={as_rl2_p=..-1}] as_rl2_p += @s _var00

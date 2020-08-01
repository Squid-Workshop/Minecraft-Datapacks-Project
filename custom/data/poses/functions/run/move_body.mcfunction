#evade some error applying to head/body
execute if entity @s[scores={as_b0_p=0}] run scoreboard players set @s as_b0_p 1
execute if entity @s[scores={as_b0_p=180}] run scoreboard players set @s as_b0_p 181

#get score and put to positive value
execute store result score @s as_b0 run data get entity @s Pose.Body[0]
execute store result score @s as_b1 run data get entity @s Pose.Body[1]
execute store result score @s as_b2 run data get entity @s Pose.Body[2]

scoreboard players set @s _var00 360
scoreboard players set @s _var01 180
scoreboard players operation @s[scores={as_b0=..-1}] as_b0 += @s _var00
scoreboard players operation @s[scores={as_b1=..-1}] as_b1 += @s _var00
scoreboard players operation @s[scores={as_b2=..-1}] as_b2 += @s _var00


#get smallest distance #first tag not normal
execute if score @s as_b0 >= @s as_b0_p run scoreboard players operation @s _var02 = @s as_b0
execute if score @s as_b0 >= @s as_b0_p run scoreboard players operation @s _var02 -= @s as_b0_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_b0 -= @s _var00
execute if score @s as_b0 < @s as_b0_p run scoreboard players operation @s _var02 = @s as_b0_p
execute if score @s as_b0 < @s as_b0_p run scoreboard players operation @s _var02 -= @s as_b0
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_b0_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_b1 >= @s as_b1_p run scoreboard players operation @s _var02 = @s as_b1
execute if score @s as_b1 >= @s as_b1_p run scoreboard players operation @s _var02 -= @s as_b1_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_b1 -= @s _var00
execute if score @s as_b1 < @s as_b1_p run scoreboard players operation @s _var02 = @s as_b1_p
execute if score @s as_b1 < @s as_b1_p run scoreboard players operation @s _var02 -= @s as_b1
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_b1_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_b2 >= @s as_b2_p run scoreboard players operation @s _var02 = @s as_b2
execute if score @s as_b2 >= @s as_b2_p run scoreboard players operation @s _var02 -= @s as_b2_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_b2 -= @s _var00
execute if score @s as_b2 < @s as_b2_p run scoreboard players operation @s _var02 = @s as_b2_p
execute if score @s as_b2 < @s as_b2_p run scoreboard players operation @s _var02 -= @s as_b2
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_b2_p -= @s _var00
scoreboard players reset @s _var02

#calculate rotation
scoreboard players operation @s _var02 = @s as_b0_p
scoreboard players operation @s _var02 -= @s as_b0
scoreboard players operation @s _var02 /= @s as_b_t
scoreboard players operation @s as_b0 += @s _var02

scoreboard players operation @s _var02 = @s as_b1_p
scoreboard players operation @s _var02 -= @s as_b1
scoreboard players operation @s _var02 /= @s as_b_t
scoreboard players operation @s as_b1 += @s _var02

scoreboard players operation @s _var02 = @s as_b2_p
scoreboard players operation @s _var02 -= @s as_b2
scoreboard players operation @s _var02 /= @s as_b_t
scoreboard players operation @s as_b2 += @s _var02


#set new pose
execute store result entity @s Pose.Body[0] float 1 run scoreboard players get @s as_b0
execute store result entity @s Pose.Body[1] float 1 run scoreboard players get @s as_b1
execute store result entity @s Pose.Body[2] float 1 run scoreboard players get @s as_b2

#update scores
scoreboard players remove @s as_b_t 1

#if asp < 360 then + 360
scoreboard players operation @s[scores={as_b0_p=..-1}] as_b0_p += @s _var00
scoreboard players operation @s[scores={as_b1_p=..-1}] as_b1_p += @s _var00
scoreboard players operation @s[scores={as_b2_p=..-1}] as_b2_p += @s _var00

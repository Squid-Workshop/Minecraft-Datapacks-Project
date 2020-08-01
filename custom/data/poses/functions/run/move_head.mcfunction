#evade some error applying to head/body
execute if entity @s[scores={as_h0_p=0}] run scoreboard players set @s as_h0_p 1
execute if entity @s[scores={as_h0_p=180}] run scoreboard players set @s as_h0_p 181

#get score and put to positive value
execute store result score @s as_h0 run data get entity @s Pose.Head[0]
execute store result score @s as_h1 run data get entity @s Pose.Head[1]
execute store result score @s as_h2 run data get entity @s Pose.Head[2]

scoreboard players set @s _var00 360
scoreboard players set @s _var01 180
scoreboard players operation @s[scores={as_h0=..-1}] as_h0 += @s _var00
scoreboard players operation @s[scores={as_h1=..-1}] as_h1 += @s _var00
scoreboard players operation @s[scores={as_h2=..-1}] as_h2 += @s _var00


#get smallest distance #first tag not normal
execute if score @s as_h0 >= @s as_h0_p run scoreboard players operation @s _var02 = @s as_h0
execute if score @s as_h0 >= @s as_h0_p run scoreboard players operation @s _var02 -= @s as_h0_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_h0 -= @s _var00
execute if score @s as_h0 < @s as_h0_p run scoreboard players operation @s _var02 = @s as_h0_p
execute if score @s as_h0 < @s as_h0_p run scoreboard players operation @s _var02 -= @s as_h0
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_h0_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_h1 >= @s as_h1_p run scoreboard players operation @s _var02 = @s as_h1
execute if score @s as_h1 >= @s as_h1_p run scoreboard players operation @s _var02 -= @s as_h1_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_h1 -= @s _var00
execute if score @s as_h1 < @s as_h1_p run scoreboard players operation @s _var02 = @s as_h1_p
execute if score @s as_h1 < @s as_h1_p run scoreboard players operation @s _var02 -= @s as_h1
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_h1_p -= @s _var00
scoreboard players reset @s _var02
execute if score @s as_h2 >= @s as_h2_p run scoreboard players operation @s _var02 = @s as_h2
execute if score @s as_h2 >= @s as_h2_p run scoreboard players operation @s _var02 -= @s as_h2_p
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_h2 -= @s _var00
execute if score @s as_h2 < @s as_h2_p run scoreboard players operation @s _var02 = @s as_h2_p
execute if score @s as_h2 < @s as_h2_p run scoreboard players operation @s _var02 -= @s as_h2
execute if score @s _var02 >= @s _var01 run scoreboard players operation @s as_h2_p -= @s _var00
scoreboard players reset @s _var02

#calculate rotation
scoreboard players operation @s _var02 = @s as_h0_p
scoreboard players operation @s _var02 -= @s as_h0
scoreboard players operation @s _var02 /= @s as_h_t
scoreboard players operation @s as_h0 += @s _var02

scoreboard players operation @s _var02 = @s as_h1_p
scoreboard players operation @s _var02 -= @s as_h1
scoreboard players operation @s _var02 /= @s as_h_t
scoreboard players operation @s as_h1 += @s _var02

scoreboard players operation @s _var02 = @s as_h2_p
scoreboard players operation @s _var02 -= @s as_h2
scoreboard players operation @s _var02 /= @s as_h_t
scoreboard players operation @s as_h2 += @s _var02


#set new pose
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s as_h0
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get @s as_h1
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s as_h2

#update scores
scoreboard players remove @s as_h_t 1

#if asp < 360 then + 360
scoreboard players operation @s[scores={as_h0_p=..-1}] as_h0_p += @s _var00
scoreboard players operation @s[scores={as_h1_p=..-1}] as_h1_p += @s _var00
scoreboard players operation @s[scores={as_h2_p=..-1}] as_h2_p += @s _var00

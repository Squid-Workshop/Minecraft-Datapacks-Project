#bar(47,66) to range (27,-2)
tag @a[x=45.3,y=100,z=66,dx=0.01,dy=1,dz=1] add BtoR
execute as @a[tag=BtoR] at @s run tp @s ~-20 ~ ~-68
tag @a[tag=BtoR] remove BtoR

#range (27,-2) to bar(47,66)
tag @a[x=27.5,y=100,z=-2,dx=0.01,dy=1,dz=1] add RtoB
execute as @a[tag=RtoB] at @s run tp @s ~20 ~ ~68
tag @a[tag=RtoB] remove RtoB

#wine cellar(52,34) to blacksmith (38,11)
tag @a[x=52,y=100,z=33.5,dx=1,dy=3,dz=0.1] add CtoB
execute as @a[tag=CtoB] at @s run tp @s ~-14 ~ ~-24
tag @a[tag=CtoB] remove CtoB

#blacksmith (38,11) to wine cellar(52,34)
tag @a[x=38,y=100,z=11.5,dx=1,dy=3,dz=0.1] add BtoC
execute as @a[tag=BtoC] at @s run tp @s ~14 ~ ~24
tag @a[tag=BtoC] remove BtoC

#prison (20,16) to library(17,63)
tag @a[x=23,y=100,z=16.5,dx=0.1,dy=3,dz=2.5] add PtoL
execute as @a[tag=PtoL] at @s run tp @s ~-4 ~ ~47
tag @a[tag=PtoL] remove PtoL
#force close door
execute if block 24 100 17 minecraft:spruce_door[open=true] as @p[distance=..3] at @s run tp @s ~-4 ~ ~47
execute if block 24 100 17 minecraft:spruce_door[open=true] run setblock 20 100 64 air
execute if block 20 100 64 air run clone 24 100 17 24 101 17 20 100 64 
execute if block 24 100 17 minecraft:spruce_door[open=true] run setblock 24 100 17 air
execute if block 24 100 17 air run clone 24 100 19 24 101 19 24 100 17

#library(17,63) to prison (20,16)
tag @a[x=17,y=100,z=62.1,dx=0.01,dy=3,dz=0.01] add LtoP
execute as @a[tag=LtoP] at @s run tp @s ~4 ~ ~-47
tag @a[tag=LtoP] remove LtoP

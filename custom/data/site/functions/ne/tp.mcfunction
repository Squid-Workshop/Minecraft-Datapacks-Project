#range to Right Bridge Tower top
tag @a[x=21,y=98,z=5,dx=1,dy=0,dz=1] add RtoRTop
execute as @a[tag=RtoRTop] at @s run tp @s ~-14 ~38 ~10
tag @a[tag=RtoRTop] remove RtoRTop

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


# left stairs is the one close to the corridor
# right stairs is the one close to the swimming pool platform
#Castle Left stairs level 3 to 2
tag @a[x=52.5,y=117,z=59,dx=0,dy=2,dz=2] add Left3to2
execute as @a[tag=Left3to2] at @s run tp @s ~ ~-6 ~
tag @a[tag=Left3to2] remove Left3to2

#Castle Left stairs level 2 to 3
tag @a[x=55.5,y=108,z=59,dx=0,dy=2,dz=2] add Left2to3
execute as @a[tag=Left2to3] at @s run tp @s ~ ~6 ~
tag @a[tag=Left2to3] remove Left2to3

#Castle Left tower to basement
tag @a[x=46.3,y=107,z=57.3,dx=0.4,dy=3,dz=0.4] add LeftTtoB
execute as @a[tag=LeftTtoB] at @s run tp @s ~-28 ~-7 ~-4
tag @a[tag=LeftTtoB] remove LeftTtoB

#Castle Right tower stairs level 3 to 2 (infinit stairs)
tag @a[x=43,y=115.5,z=21.5,dx=2,dy=3,dz=0] add RTower3to2
execute as @a[tag=RTower3to2] at @s run tp @s ~ ~-6 ~
tag @a[tag=RTower3to2] remove RTower3to2


#Castle Right tower well loop  (infinit drop)
tag @a[x=46,y=20,z=21,dx=1,dy=30,dz=1] add RTowerDropInf
execute as @a[tag=RTowerDropInf] at @s run tp @s ~ ~30 ~
tag @a[tag=RTowerDropInf] remove RTowerDropInf


#Fountain to Pool
tag @a[x=20.5,y=104,z=35.5,dx=8,dy=0.01,dz=8] add FtoP
execute as @a[tag=FtoP] at @s run tp @s 20 108 18
tag @a[tag=FtoP] remove FtoP
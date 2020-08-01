

#execute if score club pvpmode matches 1 run tellraw @a[x=-1268,y=4,z=-1784,dx=11,dy=8,dz=11] ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"Go back to the club and choose a pvp mode before you start","color":"white"}]

#players in room
execute as @a[x=-1268,y=4,z=-1784,dx=11,dy=8,dz=11] run function games:fight_club/club/waiting_room/launch_p

execute if score club pvpmode matches 2 run function games:fight_club/club/catchman/launch
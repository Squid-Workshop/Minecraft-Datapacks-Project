
###### map to fc
#item
##replaceitem entity @a inventory.26 minecraft:writable_book{display:{Name:"{\"text\":\"Fight Club\"}",Lore:["Press shift to teleport to FIGHT CLUB"],club:1b}}
#tp
#execute as @a[scores={shift=1},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Fight Club\"}"}}}}] at @s run tp @s -1297.5 28.0 -1763.0

#execute as @a[scores={shift=1},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Fight Club\"}"}}}}] at @s run tellraw @s {"text":"WE FIGHT!","color":"dark_red"}

#execute as @a[scores={shift=1},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Fight Club\"}"}}}}] at @s run gamemode adventure @s

#execute as @a[scores={shift=1},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Fight Club\"}"}}}}] at @s run replaceitem entity @s weapon.mainhand air

######door
#close
execute positioned -1298.00 21.00 -1763.01 if entity @p[distance=6..15] run fill -1298 21 -1767 -1299 21 -1767 minecraft:black_concrete
execute positioned -1298.00 21.00 -1763.01 if entity @p[distance=6..15] run fill -1298 22 -1767 -1299 22 -1767 minecraft:gray_glazed_terracotta
#open
execute positioned -1298.00 21.00 -1763.01 if entity @p[distance=..5] run fill -1298 22 -1767 -1299 21 -1767 air

#waiting room
execute if score club state matches 1 if entity @a[x=-1268,y=4,z=-1784,dx=11,dy=8,dz=11] as @a[x=-1268,y=4,z=-1784,dx=11,dy=8,dz=11] at @s run function games:fight_club/club/waiting_room/run
#main room
execute if score club state matches 1 if entity @a[x=-1304,y=21,z=-1784,dx=12,dy=4,dz=18] as @a[x=-1304,y=21,z=-1784,dx=12,dy=4,dz=18] at @s run function games:fight_club/club/main_room/run
#protect
execute as @a[tag=protected] run function games:fight_club/club/protect
#################instruction effects in club
# role
execute if score club state matches 1 positioned -1298.00 23.51 -1783.88 if entity @p[team=!,distance=..10,scores={pvpmode=1..}] run particle minecraft:enchant ~ ~0.5 ~ 2.5 0.5 0.3 0.0001 3
#team
execute if score club state matches 1 positioned -1292.5 24 -1769.5 if entity @p[distance=..8,team=] run particle minecraft:enchant -1292.56 24.00 -1769.47 0.2 0.3 0.5 0.0001 1
#pvp
execute if score club state matches 1 positioned -1303 24 -1779 if entity @p[distance=..10,scores={pvpmode=0},team=!] run particle minecraft:enchant -1303.46 24.00 -1779.00 0.2 0.5 1 0.0001 1
#######################
#run
scoreboard players set club gameon 0
execute if entity @a[tag=ingame] run scoreboard players set club gameon 1 
function games:fight_club/item/run
execute if entity @a[scores={role=1..}] run function games:fight_club/character/run
execute if score club gameon matches 1 run function games:fight_club/club/run
execute if score club gameon matches 1 if score club pvpmode matches 1 run function games:fight_club/club/deathmatch/run
execute if score club gameon matches 1 if score club pvpmode matches 2 if score catchman gameon matches 1 run function games:fight_club/club/catchman/run


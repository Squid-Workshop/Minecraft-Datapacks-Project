execute positioned ~ ~1 ~1 run scoreboard players set @e[distance=..1,limit=1,sort=nearest] life 1

execute positioned ~ ~1 ~1 at @e[scores={life=1},type=item_frame,distance=..1,limit=1,sort=nearest,nbt={ItemRotation:4b}] run summon item_frame ~ ~ ~ {Facing:5,ItemRotation:2b,Item:{id:"filled_map",Count:1b,tag:{map:157}}}

execute positioned ~ ~1 ~1 run kill @e[scores={life=1},type=item_frame,distance=..1,limit=1,nbt={ItemRotation:4b}]

execute positioned ~ ~1 ~1 at @e[scores={life=1},type=item_frame,distance=..1,limit=1,sort=nearest,nbt={ItemRotation:2b}] run summon item_frame ~ ~ ~ {Facing:5,ItemRotation:4b,Item:{id:"filled_map",Count:1b,tag:{map:158}}}

execute positioned ~ ~1 ~1 at @e[scores={life=1},type=item_frame,distance=..1,limit=1,sort=nearest,nbt={ItemRotation:2b}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["pc"],Invisible:1b}
execute positioned ~ ~1 ~1 at @e[scores={life=1},type=item_frame,distance=..1,limit=1,sort=nearest,nbt={ItemRotation:2b}] run setblock -1102 23 -1831 minecraft:redstone_block


execute positioned ~ ~1 ~1 run kill @e[scores={life=1},type=item_frame,distance=..1,limit=1,nbt={ItemRotation:2b}]

execute positioned ~ ~1 ~1 run scoreboard players set @e[distance=..1,limit=1,sort=nearest] life 1

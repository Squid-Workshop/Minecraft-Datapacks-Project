#status tags



#################rifle#################
scoreboard players add @s b_rifle 0
#add reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b}}]}] run scoreboard players add @s reload 1

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b}}]},scores={b_rifle=..29,ammo=1..}] run function games:gun/rifle/reloading

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:0}}]},scores={b_rifle=30..,ammo=1..}] run function games:gun/rifle/silencer

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:0}}]},scores={ammo=0}] run function games:gun/rifle/silencer

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:1b}}]},scores={b_rifle=30..,ammo=1..}] run function games:gun/rifle_silenced/unsilencer

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:1b}}]},scores={ammo=0}] run function games:gun/rifle_silenced/unsilencer

#reload speed
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:0}}]},scores={reload=50..,b_rifle=..29,ammo=1..}] run function games:gun/rifle/reloaded

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:1b}}]},scores={reload=50..,b_rifle=..29,ammo=1..}] run function games:gun/rifle_silenced/reloaded

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:0}}]},scores={reload=30,b_rifle=30..}] run function games:gun/rifle/silencered

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:0}}]},scores={reload=30,ammo=0}] run function games:gun/rifle/silencered

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:1b}}]},scores={reload=30,b_rifle=30..}] run function games:gun/rifle_silenced/unsilencered

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{rifle:1b,silenced:1b}}]},scores={reload=30,ammo=0}] run function games:gun/rifle_silenced/unsilencered
#################rifle#################




#################smg#################
scoreboard players add @s b_smg 0
#add reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b}}]}] run scoreboard players add @s reload 1

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b}}]},scores={b_smg=..49,ammo=1..}] run function games:gun/smg/reloading

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:0}}]},scores={b_smg=50..,ammo=1..}] run function games:gun/smg/silencer

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:0}}]},scores={ammo=0}] run function games:gun/smg/silencer

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:1b}}]},scores={b_smg=50..,ammo=1..}] run function games:gun/smg_silenced/unsilencer

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:1b}}]},scores={ammo=0}] run function games:gun/smg_silenced/unsilencer

#reload speed
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:0}}]},scores={reload=50..,b_smg=..49,ammo=1..}] run function games:gun/smg/reloaded

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:1b}}]},scores={reload=50..,b_smg=..49,ammo=1..}] run function games:gun/smg_silenced/reloaded

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:0}}]},scores={reload=30,b_smg=50..}] run function games:gun/smg/silencered

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:0}}]},scores={reload=30,ammo=0}] run function games:gun/smg/silencered

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:1b}}]},scores={reload=30,b_smg=50..}] run function games:gun/smg_silenced/unsilencered

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{smg:1b,silenced:1b}}]},scores={reload=30,ammo=0}] run function games:gun/smg_silenced/unsilencered
#################smg#################

#################shotgun#################
scoreboard players add @s b_shot 0
#add reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b}}]}] run scoreboard players add @s reload 1

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b}}]},scores={b_shot=..1,ammo=1..}] run function games:gun/shotgun_slug/reloading

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,slug:1b}}]},scores={b_shot=2..,ammo=1..}] run function games:gun/shotgun_slug/tobuck

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,slug:1b}}]},scores={ammo=0}] run function games:gun/shotgun_slug/tobuck

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,buck:1b}}]},scores={b_shot=2..,ammo=1..}] run function games:gun/shotgun_buck/toslug

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,buck:1b}}]},scores={ammo=0}] run function games:gun/shotgun_buck/toslug

#reload speed
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,slug:1b}}]},scores={reload=33..,b_shot=..1,ammo=1..}] run function games:gun/shotgun_slug/reloaded

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,buck:1b}}]},scores={reload=33..,b_shot=..1,ammo=1..}] run function games:gun/shotgun_buck/reloaded

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,slug:1b}}]},scores={reload=33,b_shot=2..}] run function games:gun/shotgun_slug/buck

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,slug:1b}}]},scores={reload=33,ammo=0}] run function games:gun/shotgun_slug/buck

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b,buck:1b}}]},scores={reload=33,b_shot=2..}] run function games:gun/shotgun_buck/slug

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{shotgun:1b, buck:1b}}]},scores={reload=10,ammo=0}] run function games:gun/shotgun_buck/slug
#################shotgun#################



#################sniper#################
scoreboard players add @s b_sniper 0
#add reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{sniper:1b,gun:1b}}]}] run scoreboard players add @s reload 1

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{sniper:1b,gun:1b}}]},scores={ammo=1..}] run function games:gun/sniper/reloading

#reload speed
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{sniper:1b,silenced:0}}]},scores={reload=50..,ammo=1..}] run function games:gun/sniper/reloaded

#################sniper#################

#################minigun#################
scoreboard players add @s b_mini 0
#add reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{minigun:1b,gun:1b}}]}] run scoreboard players add @s reload 1

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{minigun:1b,gun:1b}}]},scores={ammo=1..}] run function games:gun/minigun/reloading

#reload speed
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{minigun:1b,silenced:0}}]},scores={reload=150..,ammo=1..}] run function games:gun/minigun/reloaded

#################sniper#################

#################laser#################
scoreboard players add @s b_energy 0
#add reload
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{laser:1b,gun:1b}}]}] run scoreboard players add @s reload 1

execute if entity @s[scores={reload=4},nbt={Inventory:[{Slot:-106b,tag:{laser:1b,gun:1b}}]}] run function games:gun/laser/reloading

execute if entity @s[scores={reload=4},nbt={Inventory:[{Slot:-106b,tag:{laser:1b,gun:1b}}]}] run scoreboard players set @s reload 0

#reload speed
#execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{laser:1b,silenced:0}}]},scores={reload=50..,ammo=1..}] run function games:gun/laser/reloaded

#################sniper#################




#interrupted

#execute if entity @s[nbt=!{Inventory:[{Slot:-106b}]},scores={reload=1..}] run scoreboard players set @s reload 0


execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{gun:1b}}]},scores={reload=1..}] run scoreboard players set @s reload 0



execute if entity @s[scores={reload=0}] run effect clear @s slowness

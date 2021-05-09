#init
tag @a[tag=respawn] remove respawn
execute as @a unless score @s SID = SID C run tag @s remove ini
execute as @a[tag=!ini] run function games:gun/core/init/player_init
scoreboard players set @a[tag=ini,scores={shift=1..}] h 1500
scoreboard players set @a[tag=ini,scores={shift=..0}] h 1950
execute as @e[type=#games:supported,tag=babe,nbt={Age:0}] run function games:gun/core/init/mob_init_a
execute as @e[type=#games:supported,tag=!ini] run function games:gun/core/init/mob_init
execute as @e[tag=shield,tag=!ini] run function games:gun/core/init/mob_init

tag @a[tag=dead,scores={health=1..}] add respawn
tag @a[tag=respawn] remove dead
tag @a[scores={health=0}] add dead

scoreboard players set @a[tag=respawn] damage 0
#scoreboard players set @a[tag=!damage_buffer] hit_by 0
execute as @a[nbt={OnGround:0b}] at @s if block ~ ~-0.01 ~ #games:jump run scoreboard players add @s jump 1
tag @a[tag=damage_buffer] remove damage_buffer
execute as @a[tag=damaged] run function games:gun/core/util/damage_post
clear @a minecraft:stone_button{Tmp:1}

#################detect fire#################
#rifle
execute as @a[scores={right_click=1..,b_rifle=1..,cooldown=0},nbt={SelectedItem:{tag:{rifle:1b,silenced:0}}}] at @s run function games:gun/rifle/fire

#rifle silenced
execute as @a[scores={right_click=1..,b_rifle=1..,cooldown=0},nbt={SelectedItem:{tag:{rifle:1b,silenced:1b}}}] at @s run function games:gun/rifle_silenced/fire

#smg
execute as @a[scores={right_click=1..,b_smg=1..,cooldown=0},nbt={SelectedItem:{tag:{smg:1b,silenced:0}}}] at @s run function games:gun/smg/fire
execute as @a[scores={right_click=0,b_smg=1..,cooldown=1},nbt={SelectedItem:{tag:{smg:1b,silenced:0}}}] at @s run function games:gun/smg/fire

#smg silenced
execute as @a[scores={right_click=1..,b_smg=1..,cooldown=0},nbt={SelectedItem:{tag:{smg:1b,silenced:1b}}}] at @s run function games:gun/smg_silenced/fire
execute as @a[scores={right_click=0,b_smg=1..,cooldown=1},nbt={SelectedItem:{tag:{smg:1b,silenced:1b}}}] at @s run function games:gun/smg_silenced/fire

#shotgun slug
execute as @a[scores={right_click=1..,b_shot=1..,cooldown=0},nbt={SelectedItem:{tag:{shotgun:1b,slug:1b}}}] at @s run function games:gun/shotgun_slug/fire

#shotgun buck
execute as @a[scores={right_click=1..,b_shot=1..,cooldown=0},nbt={SelectedItem:{tag:{shotgun:1b,buck:1b}}}] at @s run function games:gun/shotgun_buck/fire

#sniper
execute as @a[scores={right_click=1..,b_sniper=1..,cooldown=0},nbt={SelectedItem:{tag:{sniper:1b}}}] at @s run function games:gun/sniper/fire

#laser
execute as @a[scores={right_click=1..,b_energy=1..,cooldown=0},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function games:gun/laser/fire
execute as @a[scores={right_click=0,b_energy=1..,cooldown=1},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function games:gun/laser/fire
execute as @a[scores={right_click=0,b_energy=1..,cooldown=2},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function games:gun/laser/fire
execute as @a[scores={right_click=0,b_energy=1..,cooldown=3},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function games:gun/laser/fire

execute as @a[scores={right_click=0,cooldown=0,aim=0,shift=0,r_cooldown=0},nbt={SelectedItem:{tag:{laser:1b,CustomModelData:21}}}] at @s run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{CustomModelData:19,display:{Name:"{\"text\":\"laser rifle\"}"},gun:1b,laser:1b,silenced:0}

#minigun
#execute as @a[nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run effect give @s minecraft:slowness 1 1 true

execute as @a[scores={right_click=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run scoreboard players add @s spin 1

execute as @a[scores={right_click=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run scoreboard players set @s cooldown 5

execute as @a[scores={right_click=0,spin=10..,cooldown=0},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run playsound minecraft:gun/minigun/spin_end player @a ^-0.3 ^ ^0.5 0.6 0.8

execute as @a[scores={right_click=0,cooldown=0},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run scoreboard players set @s spin 0

execute as @a[scores={right_click=1..,spin=1},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run playsound minecraft:gun/minigun/spin_up player @a ^-0.3 ^ ^0.5 0.8 0.55

execute as @a[scores={b_mini=1..,spin=75..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run playsound minecraft:gun/minigun/minigun player @a ^-0.3 ^ ^0.5 2 1

#execute as @a[scores={b_mini=1..,spin=75..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run function games:gun/minigun/fire
execute as @a[scores={b_mini=1..,spin=75..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run function games:gun/minigun/fire

execute as @a[scores={spin=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run scoreboard players add @s spin 1

execute as @a[scores={spin=75..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run playsound minecraft:entity.enderman.death player @a ~ ~ ~ 0.1 1.6
#################detect fire#################

#lowammo
execute as @a[scores={right_click=1..,b_rifle=0},nbt={SelectedItem:{tag:{rifle:1b}}}] at @s run function games:gun/rifle/low_ammo

execute as @a[scores={right_click=1..,b_smg=0},nbt={SelectedItem:{tag:{smg:1b}}}] at @s run function games:gun/smg/low_ammo

execute as @a[scores={right_click=1..,b_shot=0},nbt={SelectedItem:{tag:{shotgun:1b}}}] at @s run function games:gun/shotgun_buck/low_ammo

execute as @a[scores={right_click=1..,b_sniper=0},nbt={SelectedItem:{tag:{sniper:1b}}}] at @s run function games:gun/sniper/low_ammo

execute as @a[scores={right_click=1..,b_energy=0},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function games:gun/laser/low_ammo

execute as @a[scores={spin=75..,b_mini=0},nbt={SelectedItem:{tag:{minigun:1b}}}] at @s run function games:gun/minigun/low_ammo

#reload
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{gun:1b}}]}] at @s run function games:gun/core/reload

#reload interrupted

execute as @a[nbt=!{Inventory:[{Slot:-106b}]},scores={reload=1..}] run effect clear @s slowness

#execute as @a[nbt=!{Inventory:[{Slot:-106b}]},scores={reload=1..}] run scoreboard players set @s reload 0

execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{gun:1b}}]},scores={reload=1..}] run scoreboard players set @s reload 0



#cooldown
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1


#################detect aim################

#rifle
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{rifle:1b,silenced:0}}}] at @s run function games:gun/rifle/aim
#rifle silenced
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{rifle:1b,silenced:1b}}}] at @s run function games:gun/rifle_silenced/aim
#smg
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{smg:1b,silenced:0}}}] at @s run function games:gun/smg/aim
#smg silenced
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{smg:1b,silenced:1b}}}] at @s run function games:gun/smg_silenced/aim
#shotgun slug
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{shotgun:1b,slug:1b}}}] at @s run function games:gun/shotgun_slug/aim
#shotgun buck
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{shotgun:1b,buck:1b}}}] at @s run function games:gun/shotgun_buck/aim
#sniper
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{sniper:1b}}}] at @s run function games:gun/sniper/aim
#laser
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function games:gun/laser/aim
#minigun
execute as @a[scores={shift=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run function games:gun/minigun/aim

#################detect aim################

#remove aim
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{gun:1b}}}] run scoreboard players remove @s aim 1

#limit aim
execute as @a[scores={aim=3..}] run scoreboard players set @s aim 3

#climb clear aim shift
execute as @a[scores={shift=1..,climb=1..}] run scoreboard players set @s shift 0

#################clear aim################
#rifle
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{rifle:1b,silenced:0}}}] at @s run function games:gun/rifle/clear_aim
#rifle silenced
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{rifle:1b,silenced:1b}}}] at @s run function games:gun/rifle_silenced/clear_aim

#smg
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{smg:1b,silenced:0}}}] at @s run function games:gun/smg/clear_aim
#smg silenced
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{smg:1b,silenced:1b}}}] at @s run function games:gun/smg_silenced/clear_aim

#shotgun slug
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{shotgun:1b,slug:1b}}}] at @s run function games:gun/shotgun_slug/clear_aim
#shotgun buck
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{shotgun:1b,buck:1b}}}] at @s run function games:gun/shotgun_buck/clear_aim

#sniper
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{sniper:1b}}}] at @s run function games:gun/sniper/clear_aim

#laser
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{laser:1b}}}] at @s run function games:gun/laser/clear_aim

#minigun
execute as @a[scores={shift=0,aim=1..},nbt={SelectedItem:{tag:{minigun:1b,silenced:0}}}] at @s run function games:gun/minigun/clear_aim

#clear scope
execute as @a[scores={shift=0,aim=2}] at @s run clear @s minecraft:carrot_on_a_stick{scope:1b}
#################clear aim################
#remove recoil
execute as @a[scores={recoil=2..,r_cooldown=0}] run scoreboard players remove @s recoil 2
execute as @a[scores={r_cooldown=1..}] run scoreboard players remove @s r_cooldown 1

#post damage
execute as @e[type=#games:supported,scores={damage=1..}] at @s run function games:gun/core/util/mob_damage
execute as @a[scores={damage=1..,health=1..},tag=!damage_buffer] run function games:gun/core/util/damage_pre
execute as @a[tag=!dead] at @s run function games:gun/core/util/last_pos

#reset
execute as @a[scores={right_click=1..}] run scoreboard players set @s right_click 0
execute as @a[scores={shift=1..}] run scoreboard players set @s shift 0
execute as @a[scores={walk=1..}] run scoreboard players set @s walk 0
execute as @a[scores={sprint=1..}] run scoreboard players set @s sprint 0
execute as @a[scores={jump=1..}] run scoreboard players set @s jump 0


#debug bullet
#execute as @e[tag=fired_b] at @s run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 1 0
#execute as @e[tag=fired_b] at @s run tp @s ^ ^ ^0.1
#execute as @e[tag=spread] at @s run tp @s ~ ~ ~ ~ ~2
#execute as @e[tag=spread] at @s run function games:gun/core/spread/spread
#execute as @e[tag=spread] run tag @s remove spread

#bullet /from MGS_2.0.1 gun mod/
execute as @e[tag=fired_b] at @s run function games:gun/core/bullet_physics

#ammo display
#rifle
execute as @a[nbt={SelectedItem:{tag:{rifle:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_rifle"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#smg
execute as @a[nbt={SelectedItem:{tag:{smg:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_smg"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#shotgun
execute as @a[nbt={SelectedItem:{tag:{shotgun:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_shot"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#sniper
execute as @a[nbt={SelectedItem:{tag:{sniper:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_sniper"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#laser
execute as @a[nbt={SelectedItem:{tag:{laser:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_energy"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]
#minigun
execute as @a[nbt={SelectedItem:{tag:{minigun:1b}}}] run title @s actionbar ["",{"score":{"name":"@s","objective":"b_mini"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"ammo"},"color":"white"}]

#rand accu
scoreboard players add rand accu 1
execute if score rand accu >= 10000 C run scoreboard players set rand accu 0

#reset
tag @p[tag=onfire] remove onfire
tag @p[tag=grenaded] remove grenaded
tag @p[tag=turreted] remove turreted
tag @p[tag=shielded] remove shielded


tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"HJT'S Fight Club is now open.","color":"white"}]
playsound minecraft:music_disc.wait ambient @a -1298 21 -1775 2
gamerule naturalRegeneration false
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
scoreboard players set club state 1
#sign
data merge block -1299 22 -1771 {Text1:"",Text2:'{"text":"FIGHT CLUB","color":"dark_red"}',Text3:'["",{"text":"ON","color":"green"},{"text":"/OFF","color":"white"}]'}
#clear tables
#clear scores
function games:fight_club/club/reset

#lights on
fill -1304 25 -1784 -1293 25 -1768 minecraft:sea_lantern replace minecraft:black_terracotta
fill -1292 21 -1781 -1292 21 -1774 minecraft:redstone_lamp
fill -1293 20 -1784 -1304 20 -1768 minecraft:white_shulker_box[facing=down] replace minecraft:snow_block


team add JueGe
team add WangTiao
team add ChenLi
team add JianMao


#team rules
team modify JueGe seeFriendlyInvisibles true
team modify WangTiao seeFriendlyInvisibles true
team modify ChenLi seeFriendlyInvisibles true
team modify JianMao seeFriendlyInvisibles true

team modify JueGe nametagVisibility hideForOtherTeams
team modify WangTiao nametagVisibility hideForOtherTeams
team modify ChenLi nametagVisibility hideForOtherTeams
team modify JianMao nametagVisibility hideForOtherTeams

team modify JueGe collisionRule always
team modify WangTiao collisionRule always
team modify ChenLi collisionRule always
team modify JianMao collisionRule always

team modify JueGe friendlyFire true
team modify WangTiao friendlyFire true
team modify ChenLi friendlyFire true
team modify JianMao friendlyFire true

team modify JueGe suffix {"text":"-珏"}
team modify WangTiao suffix {"text":"-条"}
team modify ChenLi suffix {"text":"-力"}
team modify JianMao suffix {"text":"-毛"}

team modify JueGe color light_purple
team modify WangTiao color aqua
team modify ChenLi color yellow
team modify JianMao color gold

#auto join team
execute as @a if score @s team matches 1 run function games:fight_club/team/join1
execute as @a if score @s team matches 2 run function games:fight_club/team/join2
execute as @a if score @s team matches 3 run function games:fight_club/team/join3
execute as @a if score @s team matches 4 run function games:fight_club/team/join4

#setblock -1311 23 -1796 minecraft:redstone_block
scoreboard players set @a role 0

#default deathmatch
execute if score club pvpmode matches 0 run scoreboard players set club pvpmode 1


#turn on mode
execute if score club pvpmode matches 1 run function games:fight_club/club/deathmatch/on
execute if score club pvpmode matches 2 run function games:fight_club/club/catchman/on


#char run delay
schedule function games:fight_club/character/run_delayed 2s

#fill -1299 22 -1794 -1297 22 -1792 minecraft:redstone_wire replace minecraft:gold_block


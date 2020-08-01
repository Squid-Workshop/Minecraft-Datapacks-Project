##########reset
#clear scores
scoreboard objectives remove deaths
scoreboard objectives remove Kills
scoreboard objectives remove Points
scoreboard objectives remove juekill
scoreboard objectives remove chenkill
scoreboard objectives remove wangkill
scoreboard objectives remove jiankill
scoreboard objectives remove ammokill
scoreboard objectives remove extradeath
scoreboard objectives remove killstreak

#add scoreboards
scoreboard objectives add deaths deathCount
#scoreboard objectives add Kills minecraft.killed:minecraft.player
scoreboard objectives add Kills playerKillCount
scoreboard objectives add Points dummy
scoreboard objectives add juekill dummy
scoreboard objectives add chenkill dummy
scoreboard objectives add wangkill dummy
scoreboard objectives add jiankill dummy
scoreboard objectives add ammokill dummy
scoreboard objectives add extradeath deathCount 
scoreboard objectives add killstreak dummy
#scoreboard objectives setdisplay sidebar Kills
scoreboard players set @a Kills 0
scoreboard players set @a Points 0
scoreboard players set @a deaths 0
scoreboard players set @a role 0
scoreboard players set @a juekill 0
scoreboard players set @a chenkill 0
scoreboard players set @a wangkill 0
scoreboard players set @a jiankill 0
scoreboard players set @a ammokill 0
scoreboard players set @a extradeath 0
scoreboard players set @a killstreak 0
##########reset
tag @a[tag=ingame] remove ingame
scoreboard players set catchman life 0
scoreboard players set catchman gameon 0

#bossbar
bossbar remove minecraft:jue
bossbar remove minecraft:chen
bossbar remove minecraft:wang
bossbar remove minecraft:jian

#schedule
schedule clear games:fight_club/club/deathmatch/glow
schedule clear games:fight_club/club/catchman/provocate

#tellraw @a ["",{"text":"[","color":"white"},{"text":"Club","color":"dark_red"},{"text":"]","color":"white"},{"text":"game reset","color":"white"}]
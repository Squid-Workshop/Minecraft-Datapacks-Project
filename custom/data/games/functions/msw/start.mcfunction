execute at @e[tag=cmn] run fill ~-3 ~ ~-3 ~3 ~3 ~3 air
scoreboard players set @e[tag=cmn] life 0
execute if entity @e[tag=on,scores={Count=12}] run scoreboard players set @e[tag=cmn,limit=12,sort=random] life -1
execute if entity @e[tag=on,scores={Count=18}] run scoreboard players set @e[tag=cmn,limit=18,sort=random] life -1
execute if entity @e[tag=on,scores={Count=24}] run scoreboard players set @e[tag=cmn,limit=24,sort=random] life -1
execute at @e[tag=cmn,scores={life=0}] run function games:msw/count
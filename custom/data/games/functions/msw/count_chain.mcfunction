scoreboard players set @e[distance=..0.2,tag=cmn,scores={life=2}] life 3
scoreboard players set @e[distance=0.2..9.9,tag=cmn,scores={life=0}] life 1



execute at @e[tag=cmn,scores={life=1}] run execute if entity @e[distance=..0.2,tag=cmn,scores={Count=1..}] run function games:msw/count_show
execute at @e[tag=cmn,scores={life=1}] run scoreboard players set @e[distance=..0.2,tag=cmn,scores={Count=1..}] life 3
execute at @e[tag=cmn,scores={life=1}] run scoreboard players set @e[distance=..0.2,tag=cmn,scores={Count=0}] life 2

execute at @e[tag=cmn,scores={life=2}] run function games:msw/count_chain


execute at @e[tag=cmn,scores={life=3}] if entity @e[distance=..0.2,scores={Count=0}] run fill ~-3 ~ ~-3 ~2 ~ ~2 light_gray_wool replace air





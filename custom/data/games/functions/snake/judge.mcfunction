execute if entity @e[tag=snkbdy,scores={life=1..},distance=..0.1] run scoreboard players set @s state -1
execute unless entity @e[tag=snkbase,distance=..0.1] run scoreboard players set @s state -1
execute if entity @s[scores={state=-1}] run function games:snake/end
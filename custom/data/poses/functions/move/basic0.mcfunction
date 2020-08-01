#initiate
execute unless entity @s[scores={life=-10000000..10000000}] run scoreboard players set @s life 0

#set criteria
#tag @s remove attack
#tag @s remove walk
#tag @s remove stop

execute at @s if entity @e[limit=1,sort=nearest,tag=target,distance=2..32] run tag @s[tag=stop] add walk
execute at @s[tag=stop] if entity @e[limit=1,sort=nearest,tag=target,distance=2..32] run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:1,Tags:["target"]}
execute at @s if entity @e[limit=1,sort=nearest,tag=target,distance=2..32] run tag @s[tag=stop] remove stop
execute at @s if entity @e[limit=1,sort=nearest,tag=target,distance=2..32] run tag @s[scores={life=0},tag=attack] add walk
execute at @s if entity @e[limit=1,sort=nearest,tag=target,distance=2..32] run tag @s[scores={life=0},tag=attack] remove attack
execute at @s if entity @e[tag=target,distance=..2] run tag @s[tag=walk] add attack
execute at @s if entity @e[tag=target,distance=..2] run scoreboard players set @s[tag=walk] life 0
execute at @s if entity @e[tag=target,distance=..2] run tag @s[tag=walk] remove walk

execute at @s unless entity @e[tag=target,distance=..32] run tag @s add stop
execute at @s unless entity @e[tag=target,distance=..32] run tag @s remove walk
execute at @s unless entity @e[tag=target,distance=..32] run tag @s remove attack

execute at @s[tag=walk] run tp @s ^ ^ ^0.2
execute at @s[scores={life=0}] run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1,sort=nearest,distance=0.2..32]

#execute at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:1,Tags:["target"]}
##walk
#legs

execute at @s[tag=walk] run tp @s ~ ~ ~ ~ 0

scoreboard players set @s[tag=walk,scores={life=0}] as_ll0_p 48
scoreboard players set @s[tag=walk,scores={life=0}] as_ll_t 3

scoreboard players set @s[tag=walk,scores={life=0}] as_rl0_p -48
scoreboard players set @s[tag=walk,scores={life=0}] as_rl_t 3

scoreboard players set @s[tag=walk,scores={life=3}] as_ll0_p 0
scoreboard players set @s[tag=walk,scores={life=3}] as_ll_t 3

scoreboard players set @s[tag=walk,scores={life=3}] as_rl0_p 0
scoreboard players set @s[tag=walk,scores={life=3}] as_rl_t 3

scoreboard players set @s[tag=walk,scores={life=6}] as_ll0_p -48
scoreboard players set @s[tag=walk,scores={life=6}] as_ll_t 3

scoreboard players set @s[tag=walk,scores={life=6}] as_rl0_p 48
scoreboard players set @s[tag=walk,scores={life=6}] as_rl_t 3

scoreboard players set @s[tag=walk,scores={life=9}] as_ll0_p 0
scoreboard players set @s[tag=walk,scores={life=9}] as_ll_t 3

scoreboard players set @s[tag=walk,scores={life=9}] as_rl0_p 0
scoreboard players set @s[tag=walk,scores={life=9}] as_rl_t 3

#arms
scoreboard players set @s[tag=walk,scores={life=0}] as_la0_p 312
scoreboard players set @s[tag=walk,scores={life=0}] as_la_t 3

scoreboard players set @s[tag=walk,scores={life=0}] as_ra0_p 48
scoreboard players set @s[tag=walk,scores={life=0}] as_ra1_p 0
scoreboard players set @s[tag=walk,scores={life=0}] as_ra_t 3

scoreboard players set @s[tag=walk,scores={life=3}] as_la0_p 0
scoreboard players set @s[tag=walk,scores={life=3}] as_la_t 3

scoreboard players set @s[tag=walk,scores={life=3}] as_ra0_p 0
scoreboard players set @s[tag=walk,scores={life=3}] as_ra1_p 0
scoreboard players set @s[tag=walk,scores={life=3}] as_ra_t 3

scoreboard players set @s[tag=walk,scores={life=6}] as_la0_p 48
scoreboard players set @s[tag=walk,scores={life=6}] as_la_t 3

scoreboard players set @s[tag=walk,scores={life=6}] as_ra0_p 312
scoreboard players set @s[tag=walk,scores={life=6}] as_ra1_p 0
scoreboard players set @s[tag=walk,scores={life=6}] as_ra_t 3

scoreboard players set @s[tag=walk,scores={life=9}] as_la0_p 0
scoreboard players set @s[tag=walk,scores={life=9}] as_la_t 3

scoreboard players set @s[tag=walk,scores={life=9}] as_ra0_p 0
scoreboard players set @s[tag=walk,scores={life=9}] as_ra1_p 0
scoreboard players set @s[tag=walk,scores={life=9}] as_ra_t 3


##attack
#rightarm
scoreboard players set @s[tag=attack,scores={life=0}] as_ra0_p -90
scoreboard players set @s[tag=attack,scores={life=0}] as_ra1_p 30
scoreboard players set @s[tag=attack,scores={life=0}] as_ra_t 3

scoreboard players set @s[tag=attack,scores={life=0}] as_ll0_p 0
scoreboard players set @s[tag=attack,scores={life=0}] as_ll_t 3

scoreboard players set @s[tag=attack,scores={life=0}] as_rl0_p 0
scoreboard players set @s[tag=attack,scores={life=0}] as_rl_t 3

scoreboard players set @s[tag=attack,scores={life=3}] as_ra0_p -60
scoreboard players set @s[tag=attack,scores={life=3}] as_ra1_p -30
scoreboard players set @s[tag=attack,scores={life=3}] as_ra_t 3

scoreboard players set @s[tag=attack,scores={life=6}] as_ra0_p 0
scoreboard players set @s[tag=attack,scores={life=6}] as_ra1_p 0
scoreboard players set @s[tag=attack,scores={life=6}] as_ra_t 3
#effect
execute at @s[tag=attack,scores={life=6}] positioned ^ ^ ^1 run kill @e[tag=target,distance=..2]
execute at @s[tag=attack,scores={life=6}] run playsound minecraft:entity.player.attack.strong ambient @a ~ ~ ~ 1 1
execute at @s[tag=attack,scores={life=6}] run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1,sort=nearest,distance=0.2..32]
##stop
scoreboard players set @s[tag=stop] as_ra0_p 0
scoreboard players set @s[tag=stop] as_ra1_p 0
scoreboard players set @s[tag=stop] as_ra_t 3

scoreboard players set @s[tag=stop] as_la0_p 0
scoreboard players set @s[tag=stop] as_la_t 3

scoreboard players set @s[tag=stop] as_rl0_p 0
scoreboard players set @s[tag=stop] as_rl_t 3

scoreboard players set @s[tag=stop] as_ll0_p 0
scoreboard players set @s[tag=stop] as_ll_t 3




#execute at @s[tag=walk] run tp @s ^ ^ ^0.2
#execute at @s[tag=walk] run tp @s @e[tag=target,limit=1,sort=nearest]
execute at @s[tag=walk] run tp @s ^ ^ ^ ~ 0



scoreboard players add @s[scores={life=0..11}] life 1
scoreboard players set @s[scores={life=12..}] life 0
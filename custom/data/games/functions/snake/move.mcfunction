execute as @e[tag=snkhd] at @s run tp @s ^ ^ ^1
execute as @e[tag=snkhd] at @s run function games:snake/judge
execute as @e[tag=snkhd] at @s if entity @e[tag=snkfood,distance=..0.1] run function games:snake/eat
execute as @e[tag=snkhd] at @s[tag=snk] run function games:snake/follow
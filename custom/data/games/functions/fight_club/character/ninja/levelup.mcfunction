#level1
execute if entity @s[scores={killstreak=1}] run effect give @s minecraft:absorption 1000000 0 true

#level2
execute if entity @s[scores={killstreak=2}] run effect give @s minecraft:absorption 1000000 0 true
#level3
execute if entity @s[scores={killstreak=3}] run effect give @s minecraft:absorption 1000000 1 true
#level4 ultimate
execute if entity @s[scores={killstreak=4}] run effect give @s minecraft:absorption 1000000 1 true
execute if entity @s[scores={killstreak=4}] run say ultimate under development...
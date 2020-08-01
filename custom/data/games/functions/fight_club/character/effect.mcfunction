#effect give @s minecraft:speed 1000000 1 true
#effect give @s minecraft:jump_boost 1000000 1 true

execute if entity @s[scores={role=1}] run function games:fight_club/character/golden_knight/effect
#execute if entity @s[scores={role=2}] run function games:fight_club/character/role2/effect
execute if entity @s[scores={role=3}] run function games:fight_club/character/ninja/effect
#execute if entity @s[scores={role=4}] run function games:fight_club/character/role4/effect
execute if entity @s[scores={role=5}] run function games:fight_club/character/curse_carrier/effect
#execute if entity @s[scores={role=4}] run function games:fight_club/character/role6/effect
execute if entity @s[scores={role=7}] run function games:fight_club/character/archer/effect
execute if entity @s[scores={role=8}] run function games:fight_club/character/ranger/effect
execute if entity @s[scores={role=9}] run function games:fight_club/character/infantry/effect
execute if entity @s[scores={role=11}] run function games:fight_club/character/catcher/effect
execute if entity @s[scores={role=12}] run function games:fight_club/character/runner/effect
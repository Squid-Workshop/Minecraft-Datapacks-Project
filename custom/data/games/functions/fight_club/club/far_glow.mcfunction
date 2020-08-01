function games:fight_club/team/tag
execute as @a[tag=ingame,tag=!shift_bool] unless entity @a[tag=ingame,tag=enemy,distance=..50] run effect give @s minecraft:glowing 1 1 true
function games:fight_club/team/untag
kill @e[tag=train_blocks]
kill @e[tag=train_timer]
summon minecraft:armor_stand ~ ~1 ~ {CustomName:"\"train_timer\"",CustomNameVisible:1,Tags:["train_timer"]}
scoreboard players set @e[distance=..5,tag=train_timer] life 1
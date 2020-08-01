scoreboard players set @e[tag=on] Count 24
setblock ~ ~ ~ air
setblock ~ ~ ~ command_block{Command:"number of mines: "}
tellraw @p[scores={life=99}] {"text":"level: hard"}
scoreboard players set @e[tag=on] Count 18
setblock ~ ~ ~ air
setblock ~ ~ ~ command_block{Command:"number of mines: "}
tellraw @p[scores={life=99}] {"text":"level: normal"}
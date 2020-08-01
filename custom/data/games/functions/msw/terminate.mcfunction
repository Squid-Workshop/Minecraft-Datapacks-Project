fill ~46 36 ~50 ~-47 38 ~-52 air
fill ~46 39 ~50 ~-47 39 ~-52 air
kill @e[tag=msw]
#####


setblock ~ ~ ~ air
setblock ~ ~ ~ command_block
#####
replaceitem entity @p[scores={life=99}] weapon.offhand minecraft:filled_map{map:160}
tellraw @p[scores={life=99}] {"text":"successfully terminated minesweeper"}
scoreboard players reset @p[scores={life=99}] life
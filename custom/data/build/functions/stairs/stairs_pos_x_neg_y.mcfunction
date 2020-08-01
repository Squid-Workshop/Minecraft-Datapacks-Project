setblock ~ ~2 ~ minecraft:quartz_stairs[facing=west,half=bottom] keep
setblock ~ ~1 ~ minecraft:quartz_stairs[facing=east,half=top] keep
execute positioned ~1 ~-1 ~ if block ~ ~2 ~ air run function build:stairs/stairs_pos_x_neg_y
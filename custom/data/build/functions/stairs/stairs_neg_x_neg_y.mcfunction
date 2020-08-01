setblock ~ ~2 ~ minecraft:stone_brick_stairs[facing=east,half=bottom] keep
setblock ~ ~1 ~ minecraft:stone_brick_stairs[facing=west,half=top] keep
execute positioned ~-1 ~-1 ~ if block ~ ~2 ~ air run function build:stairs/stairs_neg_x_neg_y
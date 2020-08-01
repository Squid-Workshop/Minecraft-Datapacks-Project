setblock ~ ~2 ~ minecraft:quartz_stairs[facing=north,half=bottom] keep
setblock ~ ~1 ~ minecraft:quartz_stairs[facing=south,half=top] keep
execute positioned ~ ~-1 ~1 if block ~ ~2 ~ air run function build:stairs/stairs_pos_z_neg_y
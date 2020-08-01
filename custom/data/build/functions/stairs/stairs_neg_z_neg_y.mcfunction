setblock ~ ~2 ~ minecraft:quartz_stairs[facing=south,half=bottom] keep
setblock ~ ~1 ~ minecraft:quartz_stairs[facing=north,half=top] keep
execute positioned ~ ~-1 ~-1 if block ~ ~2 ~ air run function build:stairs/stairs_neg_z_neg_y
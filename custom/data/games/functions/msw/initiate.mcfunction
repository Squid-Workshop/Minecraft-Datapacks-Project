
summon armor_stand ~38 37 ~42 {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~ ~ ~-7 unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}
execute at @e[tag=cmn] positioned ~-7 ~ ~ unless entity @e[tag=cmn,distance=..0.2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["msw","cmn"],NoGravity:1b}

summon armor_stand ~43 37 ~-49 {Tags:["msw","off"],NoGravity:1b}
summon armor_stand ~ 37 ~-42 {Tags:["msw","on"],NoGravity:1b}

execute at @e[tag=off] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 red_wool replace air
execute at @e[tag=off] run setblock ~1 ~-1 ~1 white_wool
execute at @e[tag=off] run setblock ~-1 ~-1 ~1 white_wool
execute at @e[tag=off] run setblock ~1 ~-1 ~-1 white_wool
execute at @e[tag=off] run setblock ~-1 ~-1 ~-1 white_wool
execute at @e[tag=off] run setblock ~ ~-1 ~ white_wool
execute at @e[tag=off] positioned ~-6 ~ ~ run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 light_gray_wool
execute at @e[tag=off] positioned ~-6 ~ ~ run setblock ~ ~-1 ~ blue_wool
execute at @e[tag=off] run fill ~-12 ~-1 ~1 ~-11 ~-1 ~1 light_gray_wool replace air
execute at @e[tag=cmn] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 light_gray_wool replace air
execute at @e[tag=cmn] run fill ~-3 ~-1 ~-3 ~2 ~-1 ~2 white_wool replace air
execute at @e[tag=cmn] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 gray_wool replace air

setblock ~-46 36 ~-51 pink_wool
fill ~-46 36 ~-51 ~-44 36 ~-49 magenta_wool replace air
fill ~-46 36 ~-51 ~-42 36 ~-47 purple_wool replace air
setblock ~-44 36 ~-49 purple_wool
setblock ~-43 36 ~-47 blue_wool
setblock ~-45 36 ~-47 blue_wool
setblock ~-42 36 ~-48 blue_wool
setblock ~-42 36 ~-50 blue_wool
setblock ~-43 36 ~-51 blue_wool
setblock ~-45 36 ~-51 blue_wool
setblock ~-46 36 ~-48 blue_wool
setblock ~-46 36 ~-50 blue_wool

fill ~2 36 ~-40 ~-3 36 ~-44 light_gray_wool replace air
fill ~2 36 ~-40 ~-4 36 ~-45 white_wool replace air
fill ~3 36 ~-39 ~-4 36 ~-45 gray_wool replace air
setblock ~ 36 ~-41 black_wool
setblock ~-1 36 ~-41 black_wool
setblock ~1 36 ~-43 black_wool
setblock ~-2 36 ~-43 black_wool
fill ~ 36 ~-40 ~-1 36 ~-44 gold_block replace light_gray_wool
fill ~1 36 ~-41 ~-2 36 ~-43 gold_block replace light_gray_wool

fill ~45 36 ~49 ~-46 36 ~-45 light_gray_wool replace air
fill ~46 36 ~50 ~-47 36 ~-52 blue_wool replace air

#####
scoreboard players set @e[tag=cmn] life 0
scoreboard players set @e[tag=on] chosen 1
execute at @e[tag=on,scores={chosen=1}] run clone -765 4 -1162 -758 4 -1156 ~-4 ~2 ~-3 filtered minecraft:diamond_block
#####

setblock ~ ~ ~ air
setblock ~ ~ ~ command_block{Command:"number of mines: "}
#####
scoreboard players set @p life 99
replaceitem entity @p[scores={life=99}] weapon.offhand minecraft:filled_map{map:160}
tellraw @p[scores={life=99}] {"text":"minesweeper is launched!"}

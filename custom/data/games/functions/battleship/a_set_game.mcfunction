fill ~-4 ~-1 ~0 ~-1 ~-1 ~5 red_concrete
fill ~1 ~-1 ~0 ~4 ~-1 ~5 blue_concrete
fill ~-4 ~-8 ~0 ~4 ~-2 ~5 air
fill ~1 ~ ~0 ~4 ~1 ~5 air
fill ~-4 ~ ~0 ~-1 ~1 ~5 air

fill ~0 ~0 ~2 ~0 ~1 ~5 white_stained_glass
fill ~1 ~0 ~1 ~1 ~1 ~1 white_stained_glass
fill ~-1 ~0 ~1 ~-1 ~1 ~1 white_stained_glass



setblock ~-2 ~ ~2 chest[facing=west,type=right]
setblock ~-2 ~ ~3 chest[facing=west,type=left]
setblock ~-1 ~1 ~2 chest[facing=west,type=right]
setblock ~-1 ~1 ~3 chest[facing=west,type=left]

setblock ~2 ~ ~3 chest[facing=east,type=right]
setblock ~2 ~ ~2 chest[facing=east,type=left]
setblock ~1 ~1 ~3 chest[facing=east,type=right]
setblock ~1 ~1 ~2 chest[facing=east,type=left]

setblock ~ ~1 ~ minecraft:stone_button[face=floor]


setblock ~-2 ~ ~4 oak_sign[rotation=4]{Text1:"{\"text\":\"Attack Coor\"}",Text2:"{\"text\":\"Up\"}",Text3:"{\"text\":\"Down\"}",Text4:"{\"text\":\"Place Ships\"}"}
setblock ~2 ~ ~1 oak_sign[rotation=12]{Text1:"{\"text\":\"Attack Coor\"}",Text2:"{\"text\":\"Up\"}",Text3:"{\"text\":\"Down\"}",Text4:"{\"text\":\"Place Ships\"}"}


setblock ~ ~ ~1 minecraft:command_block[facing=up]{Command:"execute positioned ~ ~ ~-1 run function games:battleship/setship"} replace

setblock ~ ~-1 ~ minecraft:command_block[facing=up]{Command:"function games:battleship/attack"} replace
function games:battleship/setend
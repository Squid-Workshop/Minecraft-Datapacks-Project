fill ~ ~1 ~ ~ ~5 ~ oak_log replace air

fill ~-2 ~3 ~-2 ~2 ~4 ~2 oak_leaves replace air
fill ~-1 ~5 ~-1 ~1 ~6 ~1 oak_leaves replace air

fill ~-1 ~6 ~-1 ~-1 ~6 ~-1 air replace oak_leaves
fill ~-1 ~6 ~1 ~-1 ~6 ~1 air replace oak_leaves
fill ~1 ~6 ~-1 ~1 ~6 ~-1 air replace oak_leaves
fill ~1 ~6 ~1 ~1 ~6 ~1 air replace oak_leaves

####

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~-1 ~5 ~-1 ~-1 ~5 ~-1 air replace oak_leaves

kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~-1 ~5 ~1 ~-1 ~5 ~1 air replace oak_leaves

kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~1 ~5 ~-1 ~1 ~5 ~-1 air replace oak_leaves

kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~1 ~5 ~1 ~1 ~5 ~1 air replace oak_leaves

kill @e[tag=selector,limit=1,distance=..0.1]

########
function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~-2 ~3 ~-2 ~-2 ~3 ~-2 air replace oak_leaves
kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~-2 ~3 ~2 ~-2 ~3 ~2 air replace oak_leaves
kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~2 ~3 ~-2 ~2 ~3 ~-2 air replace oak_leaves
kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~2 ~3 ~2 ~2 ~3 ~2 air replace oak_leaves
kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~-2 ~4 ~-2 ~-2 ~4 ~-2 air replace oak_leaves
kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~-2 ~4 ~2 ~-2 ~4 ~2 air replace oak_leaves
kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~2 ~4 ~-2 ~2 ~4 ~-2 air replace oak_leaves
kill @e[tag=selector,limit=1,distance=..0.1]

function build:randselectduo
execute if entity @e[distance=..0.1,tag=0] run fill ~2 ~4 ~2 ~2 ~4 ~2 air replace oak_leaves
kill @e[tag=selector,limit=1,distance=..0.1]

########

setblock ~ ~ ~ oak_log
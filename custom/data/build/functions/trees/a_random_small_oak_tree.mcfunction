function build:randselecthexa

execute if entity @e[distance=..0.1,tag=A] run function build:trees/oak_bal_1_6

execute if entity @e[distance=..0.1,tag=B] run function build:trees/oak_bal_2_7

execute if entity @e[distance=..0.1,tag=C] run function build:trees/oak_bal_3_8

execute if entity @e[distance=..0.1,tag=D] run function build:trees/oak_ord_1_5

execute if entity @e[distance=..0.1,tag=E] run function build:trees/oak_ord_2_6

execute if entity @e[distance=..0.1,tag=F] run function build:trees/oak_ord_3_7

kill @e[tag=selector,limit=1,distance=..0.1]

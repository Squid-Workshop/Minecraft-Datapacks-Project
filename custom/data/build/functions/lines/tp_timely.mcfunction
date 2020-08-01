scoreboard players operation @s _var00 = @s move
execute if entity @s[scores={move=10000..17321}] run execute at @s run tp @s ^ ^ ^1
execute if entity @s[scores={move=10000..17321}] run scoreboard players remove @s move 10000
execute if entity @s[scores={move=5000..9999}] run execute at @s run tp @s ^ ^ ^0.5
execute if entity @s[scores={move=5000..9999}] run scoreboard players remove @s move 5000
execute if entity @s[scores={move=2500..4999}] run execute at @s run tp @s ^ ^ ^0.25
execute if entity @s[scores={move=2500..4999}] run scoreboard players remove @s move 2500
execute if entity @s[scores={move=1300..2499}] run execute at @s run tp @s ^ ^ ^0.13
execute if entity @s[scores={move=1300..2499}] run scoreboard players remove @s move 1300
execute if entity @s[scores={move=700..1299}] run execute at @s run tp @s ^ ^ ^0.07
execute if entity @s[scores={move=700..1299}] run scoreboard players remove @s move 700
execute if entity @s[scores={move=400..699}] run execute at @s run tp @s ^ ^ ^0.04
execute if entity @s[scores={move=400..699}] run scoreboard players remove @s move 400
execute if entity @s[scores={move=200..399}] run execute at @s run tp @s ^ ^ ^0.02
execute if entity @s[scores={move=200..399}] run scoreboard players remove @s move 200
execute if entity @s[scores={move=100..199}] run execute at @s run tp @s ^ ^ ^0.01
execute if entity @s[scores={move=100..199}] run scoreboard players remove @s move 100
execute if entity @s[scores={move=50..99}] run execute at @s run tp @s ^ ^ ^0.005
execute if entity @s[scores={move=50..99}] run scoreboard players remove @s move 50
execute if entity @s[scores={move=25..49}] run execute at @s run tp @s ^ ^ ^0.0025
execute if entity @s[scores={move=25..49}] run scoreboard players remove @s move 25
execute if entity @s[scores={move=13..24}] run execute at @s run tp @s ^ ^ ^0.0013
execute if entity @s[scores={move=13..24}] run scoreboard players remove @s move 13
execute if entity @s[scores={move=7..12}] run execute at @s run tp @s ^ ^ ^0.0007
execute if entity @s[scores={move=7..12}] run scoreboard players remove @s move 7
execute if entity @s[scores={move=4..6}] run execute at @s run tp @s ^ ^ ^0.0004
execute if entity @s[scores={move=4..6}] run scoreboard players remove @s move 4
execute if entity @s[scores={move=2..3}] run execute at @s run tp @s ^ ^ ^0.0002
execute if entity @s[scores={move=2..3}] run scoreboard players remove @s move 2
execute if entity @s[scores={move=1..2}] run execute at @s run tp @s ^ ^ ^0.0001
execute if entity @s[scores={move=1..2}] run scoreboard players remove @s move 1
#execute if entity @s[scores={move=}] run execute at @s run tp @s ^ ^ ^
#execute if entity @s[scores={move=}] run scoreboard players remove @s move 
execute if entity @s[scores={move=0}] run fill ~ ~ ~ ~ ~ ~ glass replace air

#execute if entity @e[tag=dest,distance=..0.1] run execute as @e[name=line] run say done
execute if entity @e[tag=dest,distance=..0.1] run execute at @e[tag=orig] run fill ~ ~ ~ ~ ~ ~ glass replace command_block
execute if entity @e[tag=dest,distance=..0.1] run kill @e[tag=orig]
execute if entity @e[tag=dest,distance=..0.1] run execute at @e[tag=dest] run fill ~ ~ ~ ~ ~ ~ glass replace command_block
execute if entity @e[tag=dest,distance=..0.1] run kill @e[tag=dest]

execute unless entity @e[tag=dest] run kill @s

execute unless entity @e[tag=dest,distance=..0.1] run scoreboard players operation @s move = @s _var00

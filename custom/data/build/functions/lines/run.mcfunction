execute if entity @a[nbt={SelectedItem:{tag:{Enchantments:[{id:line,lvl:1}]}}}] run function build:lines/apin
execute if entity @e[tag=pin] run function build:lines/pin_summon
execute if entity @e[tag=orig] run execute if entity @e[tag=dest] run execute unless entity @e[tag=dest,tag=sdistend] run execute as @e[tag=orig] at @s run function build:lines/d_summon
execute if entity @e[tag=dist] run function build:lines/distance
execute if entity @e[tag=orig,scores={move=10000..20000}] run execute as @e[tag=orig,scores={move=10000..20000}] run execute as @e[tag=draw] at @s run function build:lines/tp_timely
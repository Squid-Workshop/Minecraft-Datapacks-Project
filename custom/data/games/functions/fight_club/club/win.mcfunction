replaceitem entity @s armor.head minecraft:stone_button{CustomModelData:7}
effect give @s minecraft:glowing 10 1 true
summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14602026,15435844,15790320],FadeColors:[I;14602026]}]}}}}
summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14602026,15435844,15790320],FadeColors:[I;14602026]}]}}}}
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1.2
title @s title {"text":"YOU WIN!","color":"dark_green"}
tag @s remove winner
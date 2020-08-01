function games:gun/get/debug

function games:throwable/get/debug

#instruction
tellraw @s ["",{"text":"[instruction]","color":"dark_green"}]
tellraw @s ["",{"text":"1. click \"","color":"white"},{"keybind":"key.use","bold":true,"color":"gold"},{"text":"\" to fire","color":"white"}]

tellraw @s ["",{"text":"2. click \"","color":"white"},{"keybind":"key.sneak","bold":true,"color":"gold"},{"text":"\" to aim","color":"white"}]
tellraw @s ["",{"text":"3. click \"","color":"white"},{"keybind":"key.swapHands","bold":true,"color":"gold"},{"text":"\" to reload","color":"white"}]

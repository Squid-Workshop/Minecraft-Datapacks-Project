execute at @s[scores={non_op=200}] run spreadplayers -1263.5 -1704.0 0 300 false @s
execute at @s[scores={non_op=200}] run tellraw @a [{"text":"[Teleported ","color":"gray","italic":"true"},{"selector":"@s","color":"gray","italic":"true"},{"text":" to a Random Place]","color":"gray","italic":"true"}]
execute at @s[scores={non_op=201}] run function run:tp/wefls
execute at @s[scores={non_op=202}] run function run:tp/playground
execute at @s[scores={non_op=203}] run function run:tp/xzl
execute at @s[scores={non_op=204}] run function run:tp/jxl
execute at @s[scores={non_op=205}] run function run:tp/kjl
execute at @s[scores={non_op=206}] run function run:tp/shit
execute at @s[scores={non_op=207}] run function run:tp/qs
execute at @s[scores={non_op=208}] run function run:tp/lab
execute at @s[scores={non_op=209}] run function run:tp/park
execute at @s[scores={non_op=210}] run function run:tp/silvercity
execute at @s[scores={non_op=211}] run function run:tp/town
execute at @s[scores={non_op=212}] run function run:tp/maps
execute at @s[scores={non_op=300}] run tellraw @s "<OPs> Fine"
execute at @s[scores={non_op=301}] run tp @s D_HJT
execute at @s[scores={non_op=301}] if entity @a[name=D_HJT] run tellraw @a [{"text":"[Teleported ","color":"gray","italic":"true"},{"selector":"@s","color":"gray","italic":"true"},{"text":" to D_HJT]","color":"gray","italic":"true"}]
execute at @s[scores={non_op=302}] run tp @s harry8698
execute at @s[scores={non_op=302}] if entity @a[name=harry8698] run tellraw @a [{"text":"[Teleported ","color":"gray","italic":"true"},{"selector":"@s","color":"gray","italic":"true"},{"text":" to harry8698]","color":"gray","italic":"true"}]
execute at @s[scores={non_op=303}] run tp @s nzcsx
execute at @s[scores={non_op=303}] if entity @a[name=nzcsx] run tellraw @a [{"text":"[Teleported ","color":"gray","italic":"true"},{"selector":"@s","color":"gray","italic":"true"},{"text":" to nzcsx]","color":"gray","italic":"true"}]
execute at @s[scores={non_op=304}] run tp @s YMS2001
execute at @s[scores={non_op=304}] if entity @a[name=YMS2001] run tellraw @a [{"text":"[Teleported ","color":"gray","italic":"true"},{"selector":"@s","color":"gray","italic":"true"},{"text":" to YMS2001]","color":"gray","italic":"true"}]
execute at @s[scores={non_op=305}] run tp D_HJT @s
execute at @s[scores={non_op=305}] if entity @a[name=D_HJT] run tag @s add non_op_disabled
execute at @s[scores={non_op=306}] run tp harry8698 @s
execute at @s[scores={non_op=306}] if entity @a[name=harry8698] run tag @s add non_op_disabled
execute at @s[scores={non_op=307}] run tp nzcsx @s
execute at @s[scores={non_op=307}] if entity @a[name=nzcsx] run tag @s add non_op_disabled
execute at @s[scores={non_op=308}] run tp YMS2001 @s
execute at @s[scores={non_op=308}] if entity @a[name=YMS2001] run tag @s add non_op_disabled
execute at @s[tag=non_op_disabled] run tellraw @s [{"text":"Please ask for assistance.","color":"red"}]
execute at @s[scores={non_op=400}] run tellraw @s [{"text":"Your Balance is "},{"score":{"objective":"Balance","name":"*"}}]
execute at @s[scores={non_op=401}] run function trade:topup
execute at @s[scores={non_op=402}] run function trade:getfoodmenu
execute at @s[scores={non_op=403}] run function trade:getequipmenu
execute at @s[scores={non_op=404}] run tellraw @s "working on it"
execute at @s[scores={non_op=405}] run tellraw @s [{"text":" Tools ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger non_op set 4060"}},{"text":" Swords ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger non_op set 4061"}},{"text":" Armors ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger non_op set 4062"}},{"text":" Bow ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger non_op set 4063"}}]
execute at @s[scores={non_op=406}] run tellraw @s "working on it"
execute at @s[scores={non_op=500}] run function music:getmusicbook
execute at @s[scores={non_op=501}] run tellraw @s "working on it"
execute at @s[scores={non_op=502}] run tellraw @s "working on it"
execute at @s[scores={non_op=503}] run tellraw @s "working on it"
execute at @s[scores={non_op=800}] run tellraw @s "working on it"
execute at @s[scores={non_op=801}] run tellraw @s "working on it"
execute at @s[scores={non_op=802}] run tellraw @s "working on it"
execute at @s[scores={non_op=803}] run give @s paper{CustomModelData:1,Enchantments:[{id:realcode,lvl:1}],display:{Name:'"QR Code"'}}
execute at @s[scores={non_op=803}] run tellraw @s [{"text":"Please scan and suscribe to our ","color":"white"},{"text":"Wechat ","color":"green"},{"text":"Account!!","color":"white"}]
execute at @s[scores={non_op=804}] run tellraw @s "working on it"
execute at @s[scores={non_op=805}] run tellraw @s "working on it"
execute at @s[scores={non_op=806}] run tellraw @s "working on it"
execute at @s[scores={non_op=4000}] run function trade:food/enchedgoldenapple
execute at @s[scores={non_op=4001}] run function trade:food/goldenapple
execute at @s[scores={non_op=4002}] run function trade:food/cake
execute at @s[scores={non_op=4003}] run function trade:food/rabbitstew
execute at @s[scores={non_op=4004}] run function trade:food/goldencarrot
execute at @s[scores={non_op=4005}] run function trade:food/cookedpork
execute at @s[scores={non_op=4006}] run function trade:food/cookedbeef
execute at @s[scores={non_op=4007}] run function trade:food/pumpkinpie
execute at @s[scores={non_op=4008}] run function trade:food/mushroomstew
execute at @s[scores={non_op=4009}] run function trade:food/beetrootsoup
execute at @s[scores={non_op=4010}] run function trade:food/cookedsalmon
execute at @s[scores={non_op=4011}] run function trade:food/cookedmutton
execute at @s[scores={non_op=4012}] run function trade:food/cookedchicken
execute at @s[scores={non_op=4013}] run function trade:food/cookedrabbit
execute at @s[scores={non_op=4014}] run function trade:food/bakedpotato
execute at @s[scores={non_op=4015}] run function trade:food/cookedcod
execute at @s[scores={non_op=4016}] run function trade:food/bread
execute at @s[scores={non_op=4017}] run function trade:food/apple
execute at @s[scores={non_op=4018}] run function trade:food/cookie
execute at @s[scores={non_op=4019}] run function trade:food/melonslice
execute at @s[scores={non_op=4020}] run function trade:food/sweetberries
execute at @s[scores={non_op=4021}] run function trade:food/driedkelp
execute at @s[scores={non_op=4022}] run function trade:equipment/armorsetdiamond
execute at @s[scores={non_op=4023}] run function trade:equipment/armorsetgolden
execute at @s[scores={non_op=4024}] run function trade:equipment/armorsetiron
execute at @s[scores={non_op=4025}] run function trade:equipment/toolsetdiamond
execute at @s[scores={non_op=4026}] run function trade:equipment/toolsetiron
execute at @s[scores={non_op=4027}] run function trade:equipment/diamondpickaxe
execute at @s[scores={non_op=4028}] run function trade:equipment/diamondshovel
execute at @s[scores={non_op=4029}] run function trade:equipment/diamondaxe
execute at @s[scores={non_op=4030}] run function trade:equipment/diamondsword
execute at @s[scores={non_op=4031}] run function trade:equipment/diamondhelmet
execute at @s[scores={non_op=4032}] run function trade:equipment/diamondchestplate
execute at @s[scores={non_op=4033}] run function trade:equipment/diamondleggings
execute at @s[scores={non_op=4034}] run function trade:equipment/diamondboots
execute at @s[scores={non_op=4035}] run function trade:equipment/ironpickaxe
execute at @s[scores={non_op=4036}] run function trade:equipment/ironshovel
execute at @s[scores={non_op=4037}] run function trade:equipment/ironaxe
execute at @s[scores={non_op=4038}] run function trade:equipment/shears
execute at @s[scores={non_op=4039}] run function trade:equipment/flintandsteel
execute at @s[scores={non_op=4040}] run function trade:equipment/ironsword
execute at @s[scores={non_op=4041}] run function trade:equipment/ironhelmet
execute at @s[scores={non_op=4042}] run function trade:equipment/ironchestplate
execute at @s[scores={non_op=4043}] run function trade:equipment/ironleggings
execute at @s[scores={non_op=4044}] run function trade:equipment/ironboots
execute at @s[scores={non_op=4045}] run function trade:equipment/shield
execute at @s[scores={non_op=4046}] run function trade:equipment/goldenhelmet
execute at @s[scores={non_op=4047}] run function trade:equipment/goldenchestplate
execute at @s[scores={non_op=4048}] run function trade:equipment/goldenleggings
execute at @s[scores={non_op=4049}] run function trade:equipment/goldenboots
execute at @s[scores={non_op=4060}] run function trade:enchantments/buy_tool
execute at @s[scores={non_op=4061}] run function trade:enchantments/buy_sword
execute at @s[scores={non_op=4062}] run function trade:enchantments/buy_armor
execute at @s[scores={non_op=4063}] run function trade:enchantments/buy_bow

execute at @s[scores={non_op=5001..5024}] run function music:song/_select
execute at @s[scores={non_op=5996}] run execute if entity @e[tag=msc,scores={music=1..}] run tellraw @a [{"text":"Terminated by ","color":"gray"},{"selector":"@s","color":"gray"}]
execute at @s[scores={non_op=5996}] run execute as @e[tag=msc,scores={music=1..}] run function music:song/_stop
execute at @s[scores={non_op=5997}] run execute as @e[tag=msc,scores={music=1..}] run function music:song/_previous
execute at @s[scores={non_op=5998}] run execute as @e[tag=msc,scores={music=1..}] run function music:song/_next
execute at @s[scores={non_op=5999},tag=!mscpause] run execute as @e[tag=msc,scores={music=1..}] run function music:song/_pause
execute at @s[scores={non_op=5999},tag=mscpause] run execute as @e[tag=msc,scores={music=1..}] run function music:song/_unpause
execute at @s[scores={non_op=5999}] run execute unless entity @e[tag=msc,scores={music=1..}] run tellraw @s [{"text":"Please choose a song first.","color":"gray"}]



scoreboard players reset @s non_op
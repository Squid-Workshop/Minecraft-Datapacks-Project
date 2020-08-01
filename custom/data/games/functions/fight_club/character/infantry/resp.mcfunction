clear @s
effect clear @s
effect give @s minecraft:absorption 3 2 true
function games:fight_club/character/infantry/effect

#####set scores
scoreboard players set @s ammo 30

############################dress up#############################
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:12441301}}
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:12441301}}
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:12441301}}
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"Soldier"},SkullOwner:{Id:"8500d677-47a0-49a4-8066-fcefda090003",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmY4YzZkOTI1ZWM2MWMzZDZmZTc0ZjcyM2Q2ZTEzYTRmMTA1YjNhN2M1NmE0NGUyNmZmZTNlZDA3ZGQ3M2MifX19"}]}}}

############################inventory#############################
#auto rifle
function games:gun/get/rifle
#smg
function games:gun/get/smg
give @s iron_axe
function games:fight_club/item/supply/coke
function games:fight_club/item/supply/mizone


########################head
#1 {display:{Name:"S.W.A.T."},SkullOwner:{Id:"b4bba9da-b295-44db-869d-8d36fe0f59a9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTg0NGFjYzNmY2ExMTNhMmI1MzQ5NmM5OTI5NzcxNzA2YWRiYjgxNzkyNmNlZDI3YjkyYmEyYjJiNWM1YTAifX19"}]}}}

#2 {display:{Name:"Soldier"},SkullOwner:{Id:"8500d677-47a0-49a4-8066-fcefda090003",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmY4YzZkOTI1ZWM2MWMzZDZmZTc0ZjcyM2Q2ZTEzYTRmMTA1YjNhN2M1NmE0NGUyNmZmZTNlZDA3ZGQ3M2MifX19"}]}}}
###########################

############################skins template
#replaceitem entity @p[distance=..8,scores={role=1}] armor.chest 

#replaceitem entity @p[distance=..8,scores={role=1}] armor.legs 

#replaceitem entity @p[distance=..8,scores={role=1}] armor.feet 

#replaceitem entity @p[distance=..8,scores={role=1}] armor.head minecraft:player_head
#############################



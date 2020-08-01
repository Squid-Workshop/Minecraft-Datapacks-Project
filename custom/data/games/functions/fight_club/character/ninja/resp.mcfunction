clear @s
effect clear @s

effect give @s minecraft:absorption 3 2 true
function games:fight_club/character/ninja/effect
############################dress up#############################
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"Ninja"},SkullOwner:{Id:"12890deb-3873-4551-b944-5173be2139dd",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWNjZjI2MjkyNmQ4MmNlZWI1MzJjNzU3OTdiMjg0YzdlODkxYWU1MjQxYWIxODM5Yzg4YmNmNGU2YzIzMmMifX19"}]}}}
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:0}} 1
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:0}} 1
replaceitem entity @s armor.feet leather_boots{display:{color:0},Enchantments:[{id:feather_falling,lvl:4}]} 1

############################inventory#############################
function games:fight_club/item/weapon/katana_shadow
#function games:fight_club/item/weapon/bow_common
function games:fight_club/item/supply/coke
function games:fight_club/item/supply/scream
#replaceitem entity @s inventory.0 minecraft:spectral_arrow 20
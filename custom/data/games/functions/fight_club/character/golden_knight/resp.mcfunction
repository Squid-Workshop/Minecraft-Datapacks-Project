clear @s
effect clear @s
effect give @s minecraft:absorption 3 2 true
function games:fight_club/character/golden_knight/effect

############################dress up#############################
replaceitem entity @s armor.chest minecraft:golden_chestplate{Enchantments:[{id:unbreaking,lvl:3}]}
replaceitem entity @s armor.legs minecraft:golden_leggings{Enchantments:[{id:unbreaking,lvl:3}]}
replaceitem entity @s armor.feet minecraft:golden_boots{Enchantments:[{id:unbreaking,lvl:3}]}
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Knight Helmet\"}"},SkullOwner:{Id:"5f961bbd-2f8c-4ff1-9dcd-561288679652",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMDJlNWZmN2ZkZGUyNmMxYWM0OTgxNDFlNjBkMDhjNzY2MWZjM2MwZGI5NjY5OWI5OWVjMmE4ZjNhY2FiIn19fQ=="}]}}}

############################inventory#############################
function games:fight_club/item/weapon/golden_axe

function games:fight_club/item/weapon/crossbow_imperial

function games:fight_club/item/equipment/offhand/shield_dragon/get

function games:fight_club/item/supply/coke

#replaceitem entity @s hotbar.8 minecraft:spectral_arrow 5
function games:fight_club/item/supply/arrow_common

############################extra skin#############################
#function games:fight_club/item/equipment/offhand/shield_golden
replaceitem entity @s inventory.1 minecraft:player_head{display:{Name:"{\"text\":\"Knight Helmet\"}"},SkullOwner:{Id:"e9fd8c6a-f5ee-4aa6-a558-4dbd31246c93",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Q0NzMwYWQ1MmE5Yjk5Nzk1MGU2MzdlNTk1NDJmNjY2NDFhYTJmY2Q5OWFmM2E5Mzc3MzZmMDQyNjQyNjg4In19fQ=="}]}}} 
replaceitem entity @s inventory.2 minecraft:player_head{display:{Name:"{\"text\":\"Knight Helmet\"}"},SkullOwner:{Id:"2806b7ac-4b1f-4876-869e-97f6da7fb35e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWU2YWFiMWI3YmNhNzViZmVkNjFiNmI4ODZhNzQ4ZjI4M2VjZmMxYjM3MjRmODMxNWJiZjViNWJlNmEifX19"}]}}}
replaceitem entity @s inventory.3 minecraft:player_head{display:{Name:"{\"text\":\"Golden Skull\"}"},SkullOwner:{Id:"fd171629-3bf3-4c0f-82dc-567970aedf02",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGFkMDQ3NmU4NjcxNjk2YWYzYTg5NDlhZmEyYTgxNGI5YmRkZTY1ZWNjZDFhOGI1OTNhZWVmZjVhMDMxOGQifX19"}]}}}


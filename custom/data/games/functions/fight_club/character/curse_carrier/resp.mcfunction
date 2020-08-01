clear @s
effect clear @s
effect give @s minecraft:absorption 3 2 true
function games:fight_club/character/curse_carrier/effect

############################dress up#############################
replaceitem entity @p[distance=..8,scores={role=5}] armor.chest minecraft:chainmail_chestplate{Enchantments:[{id:unbreaking,lvl:3}]}
replaceitem entity @p[distance=..8,scores={role=5}] armor.legs minecraft:chainmail_leggings{Enchantments:[{id:unbreaking,lvl:3}]}
replaceitem entity @p[distance=..8,scores={role=5}] armor.feet minecraft:chainmail_boots{Enchantments:[{id:unbreaking,lvl:3}]}
replaceitem entity @p[distance=..8,scores={role=5}] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Curse Carrier Skull\"}"},SkullOwner:{Id:"f02eff42-3fc7-4b97-8b06-b1ae18bd714e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY4YmFhNDhiOGY1MTE5OTBlNDdkYjk2ODMyNGMxNTJiZDExNjc3MzFkZGYwMzQ1MzAwNDQ3MzVhNmJkMmVkNCJ9fX0="}]}}}

############################inventory#############################
function games:fight_club/item/weapon/flaming_sword
function games:fight_club/item/supply/instashift
function games:fight_club/item/supply/swelling_earth
function games:fight_club/item/supply/akelarre
function games:fight_club/item/supply/coke
#function games:fight_club/item/supply/scream


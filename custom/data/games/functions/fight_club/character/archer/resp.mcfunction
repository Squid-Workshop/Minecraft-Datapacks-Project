clear @s

effect clear @s

effect give @s minecraft:absorption 3 2 true
function games:fight_club/character/archer/effect

############################dress up#############################
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:0}} 1
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:0}} 1
replaceitem entity @s armor.feet leather_boots{display:{color:0},Enchantments:[{id:feather_falling,lvl:7}]} 1
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"SWAT Soldier"},SkullOwner:{Id:"81257191-022f-480c-a321-05c35fad9cb7",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI5MTVmZDc1ODY2NjliODQ4MzJkOTNiZWM3OGNjMzk1ODgzYmQzZWE2MjVlYzk1ZTEzYTg5MWZjOGJiZTgyIn19fQ=="}]}}}

#############################inventory#############################
function games:fight_club/item/weapon/bow_rare
give @s minecraft:iron_axe 1
function games:fight_club/item/supply/mizone
function games:fight_club/item/supply/coke
function games:fight_club/item/supply/arrow_explosive_mini/get
function games:fight_club/item/supply/arrow_explosive_mini/get
function games:fight_club/item/supply/arrow_common
function games:fight_club/item/supply/arrow_common
function games:fight_club/item/supply/arrow_common
function games:fight_club/item/supply/arrow_common


#give @s minecraft:tipped_arrow{CustomPotionEffects:[{Id:2,Amplifier:2,Duration:20,ShowParticles:0b},{Id:15,Duration:40,ShowParticles:0b},{Id:18,Duration:120,ShowParticles:0b},{Id:24,Duration:80,ShowParticles:0b}],CustomPotionColor:16375947,display:{Name:"\"Elf's arrow\""}} 30

#give @s minecraft:tipped_arrow{CustomPotionEffects:[{Id:2,Amplifier:6,Duration:120,ShowParticles:0b},{Id:5,Amplifier:9,Duration:120,ShowParticles:0b},{Id:10,Amplifier:2,Duration:120,ShowParticles:0b},{Id:11,Amplifier:1,Duration:120,ShowParticles:0b},{Id:15,Duration:120,ShowParticles:0b},{Id:24,Duration:120,ShowParticles:0b}],CustomPotionColor:5906068,display:{Name:"\"Artemis's arrow\""}}

#give @s minecraft:tipped_arrow{CustomPotionEffects:[{Id:18,Amplifier:2,Duration:40,ShowParticles:0b},{Id:24,Duration:60,ShowParticles:0b},{Id:25,Amplifier:126,Duration:20,ShowParticles:0b}],CustomPotionColor:1986191,display:{Name:"\"XiWangMu's arrow\"",Lore:["��������"]}}
####################ranger#######################
#####clear
clear @s
effect clear @s

#####set scores
scoreboard players set @s ammo 20

effect give @s minecraft:absorption 3 2 true
function games:fight_club/character/ranger/effect

############################dress up#############################
replaceitem entity @s armor.chest elytra
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:15787437}} 1
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:6241041}} 1
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Outlaw\"}"},SkullOwner:{Id:"e165c327-266b-48eb-84f9-91f0ec010e0d",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTgzNWU3ZGYyNjNlZmZjYmM2YjI0YmNiMzlmOTdkNTM2YWIxYjM3N2VjNWQzNjdiZTNjYTQ5MzRlODRhN2I5In19fQ=="}]}}} 1

############################inventory#############################
function games:gun/get/shotgun_buck
function games:fight_club/item/equipment/jetpack/get
give @s iron_axe
function games:fight_club/item/weapon/bow_common
function games:fight_club/item/supply/coke
replaceitem entity @s inventory.0 minecraft:spectral_arrow 10
############################skins template
#replaceitem entity @p[distance=..8,scores={role=1}] armor.chest 

#replaceitem entity @p[distance=..8,scores={role=1}] armor.legs 

#replaceitem entity @p[distance=..8,scores={role=1}] armor.feet 

#replaceitem entity @p[distance=..8,scores={role=1}] armor.head minecraft:player_head
#############################

#############heads
####1 minecraft:player_head{display:{Name:"{\"text\":\"Outlaw\"}"},SkullOwner:{Id:"e165c327-266b-48eb-84f9-91f0ec010e0d",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTgzNWU3ZGYyNjNlZmZjYmM2YjI0YmNiMzlmOTdkNTM2YWIxYjM3N2VjNWQzNjdiZTNjYTQ5MzRlODRhN2I5In19fQ=="}]}}} 1

####2
#minecraft:player_head{display:{Name:"{\"text\":\"Outlaw\"}"},SkullOwner:{Id:"d04eb2a6-651f-48cb-84e7-57ff2a66cfd3",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI2NTY4MWYyZGNlM2E2MDQ2ZTFhY2UyNDRmYzY5NGUzNzI0Mjk4MTY4MTVlMWM2OWFjMDg1ZTdjOTlkMzQ2YSJ9fX0="}]}}} 1
####3
#minecraft:player_head{display:{Name:"{\"text\":\"Outlaw\"}"},SkullOwner:{Id:"b0095119-3b44-4ff9-a77f-d612214c32b4",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTEzZDgwNTQ3YTk1NzE3ZjM2ZmViYTc5NmNjOTYyMDhjYzg5YWQ4MzZlYTEzYTQ1NDJhNTNhNDA5ZGZiYiJ9fX0="}]}}} 1
####4
#minecraft:player_head{display:{Name:"{\"text\":\"Cursed Cowboy\"}"},SkullOwner:{Id:"d41bcc90-33b9-48dc-88e7-283aeb5ed1e9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU2ZmM3YjkyOWQ1YTQ0MWEzOTk3Yjc0OTg5NjYzNThiZmUwOTg2MGM4YjVjYjNmYTNlYjdiOTllZjFkMWVkIn19fQ=="}]}}} 1
#############

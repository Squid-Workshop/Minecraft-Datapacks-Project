summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["camera","init"],Small:1b,NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f]}}

replaceitem entity @e[tag=init,tag=camera] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Camera\"}"},SkullOwner:{Id:[I;-214218297,-423409658,-1167602586,771226032],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmFlM2EzYTRhMWFhNTBkODVkYmNkYWM4ZGE2M2Q3Y2JmZDQ1ZTUyMGRmZWMyZDUwYmVkZjhlOTBlOGIwZTRlYSJ9fX0="}]}}}
replaceitem entity @e[tag=init,tag=camera] weapon.mainhand minecraft:stone_button{CustomModelData:12}
tag @e[tag=init,tag=camera] remove init
#1 JueGe
#2 ChenLi
#3 WangTiao
#4 JianMao



execute if entity @s[team=JueGe] as @a[team=!JueGe] run tag @s add enemy
execute if entity @s[team=JueGe] as @a[team=JueGe] run tag @s add ally

execute if entity @s[team=ChenLi] as @a[team=!ChenLi] run tag @s add enemy
execute if entity @s[team=ChenLi] as @a[team=ChenLi] run tag @s add ally

execute if entity @s[team=WangTiao] as @a[team=!WangTiao] run tag @s add enemy
execute if entity @s[team=WangTiao] as @a[team=WangTiao] run tag @s add ally

execute if entity @s[team=JianMao] as @a[team=!JianMao] run tag @s add enemy
execute if entity @s[team=WangTiao] as @a[team=WangTiao] run tag @s add ally

tag @s remove ally
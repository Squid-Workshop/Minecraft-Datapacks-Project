#/from MGS_2.0.1 gun mod/
scoreboard players set v3 V -1
execute if entity @s[nbt={ActiveEffects:[{Id:22b}]}] store result score v3 V run data get entity @s ActiveEffects[{Id:22b}].Amplifier
scoreboard players add v3 V 1
scoreboard players operation v3 V *= -4 C
scoreboard players operation v3 V += @s health

# tellraw @a {"score":{"name":"v3","objective":"V"}}
execute if entity @s[gamemode=!creative,gamemode=!spectator] at @s run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 3 1

effect give @s[scores={damage=6..}] minecraft:instant_damage 1 0 true
effect give @s[scores={damage=12..}] minecraft:instant_damage 1 1 true
effect give @s[scores={damage=24..}] minecraft:instant_damage 1 2 true
execute store result score v0 V run data get entity @s Attributes[0].Base
#execute store result score v0 V run scoreboard players get @s health

# Attributes[generic.maxHealth].Modifiers[effect.minecraft.health_boost]
execute store result score v1 V run data get entity @s Attributes[0].Modifiers[0].Amount

scoreboard players operation v0 V += v1 V
scoreboard players operation v2 V = v0 V
scoreboard players operation v0 V -= v3 V
scoreboard players operation v0 V += @s damage


execute if entity @s[gamemode=!creative,gamemode=!spectator] if score v0 V >= v2 V run function games:gun/core/util/damage_lethal
#execute if score showDeath V matches 0 if score v0 V >= v2 V run function games:gun/core/util/damage_lethal_simp
execute if entity @s[gamemode=!creative,gamemode=!spectator] if score v0 V < v2 V run function games:gun/core/util/damage_nonlethal
scoreboard players set @s damage 0

scoreboard players operation v0 V = @s hit_by
execute as @a if score @s UID = v0 V run tag @s add killer
#execute if score @s UID = @p[tag=killer] UID run tellraw @s {"text":"Self Damage!","color":"red"}
tag @a[tag=killer] remove killer

tag @p[tag=onfire] remove onfire
tag @p[tag=grenaded] remove grenaded
tag @p[tag=turreted] remove turreted
tag @p[tag=shielded] remove shielded


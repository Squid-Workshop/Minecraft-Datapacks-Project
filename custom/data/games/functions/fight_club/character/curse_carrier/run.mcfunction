# vengence:
# summons evoker_fangs at death point for 3 seconds
execute at @s[nbt={DeathTime:1}] run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["cc_vengence"]}
execute at @e[tag=cc_vengence] run function games:fight_club/character/curse_carrier/run_helper


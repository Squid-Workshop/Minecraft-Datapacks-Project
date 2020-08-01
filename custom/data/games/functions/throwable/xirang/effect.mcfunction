#say template effect

# if   (Age==0)
# then fill coral blocks replace air
execute if entity @s[nbt={Age:0}] run fill ~ ~-5 ~ ~ ~5 ~ horn_coral_block keep

# if   (Age==119)
# then fill air replace horn_coral_block
execute if entity @s[nbt={Age:119}] run fill ~ ~-5 ~ ~ ~5 ~ air replace horn_coral_block

# fill air replace dead_horn_coral_block
execute unless entity @s[nbt={Age:0}] run fill ~ ~-5 ~ ~ ~5 ~ air replace dead_horn_coral_block


#kill @s
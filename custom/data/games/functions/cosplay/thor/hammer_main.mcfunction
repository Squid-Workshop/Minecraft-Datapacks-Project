#	hammer_flying,		OnGround && Right_Click
#execute as @a[tag=rightClik_bool,nbt={OnGround:false,SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] at @s positioned ^ ^ ^-3 run function games:cosplay/thor/hammer_flying
execute as @a[tag=rightClik_bool,nbt={OnGround:false,SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] at @s positioned ^ ^ ^-3 run function games:cosplay/thor/hammer_flyingb

#	hammer_lightning,	OffGround && Right_Click
execute as @a[tag=rightClik_bool,nbt={OnGround:true,SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}}] at @s run function games:cosplay/thor/hammer_lightning
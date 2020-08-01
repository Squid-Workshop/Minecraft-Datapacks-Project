function games:cosplay/loki/summon
tag @e[tag=illusion,limit=2,sort=nearest] add illutemp
replaceitem entity YMS2001 weapon.mainhand air
replaceitem entity YMS2001 weapon.offhand air
replaceitem entity YMS2001 armor.head air
effect give YMS2001 minecraft:invisibility 999 0 true
effect give YMS2001 minecraft:speed 2 3 true
scoreboard players remove YMS2001 sneaktime 40
schedule function games:cosplay/loki/kill 2s
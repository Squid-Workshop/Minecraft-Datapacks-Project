
#summon zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
execute positioned -1349.00 34.00 -1672.60 run function site:npc/event/runrice/summon/zombie
#spread in front of jxl
execute positioned -1349.00 34.00 -1672.60 run spreadplayers -1345.00 -1674.95 0.2 3 false @e[tag=runrice,distance=..2]
#summon back of jxl
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
execute positioned -1339.00 34.53 -1621.68 run function site:npc/event/runrice/summon/zombie
#spread back of jxl
execute positioned -1339.00 34.53 -1621.68 run spreadplayers -1339.00 -1621.68 0.2 3 false @e[tag=runrice,distance=..2]
#face Shitang
execute as @e[tag=runrice] at @s run tp @s ~ ~ ~ facing -1237 34 -1653
#schedule cont
schedule function site:npc/event/runrice/cont 2s
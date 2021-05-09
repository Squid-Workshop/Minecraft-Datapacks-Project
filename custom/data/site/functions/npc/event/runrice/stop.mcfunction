# delete npc
kill @e[tag=npc,tag=event,tag=runrice]
#stop recur
schedule clear site:npc/event/runrice/runrice/run
schedule clear site:npc/event/runrice/cont
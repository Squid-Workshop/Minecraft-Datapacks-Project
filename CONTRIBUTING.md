## Datapack Naming Standard
Respository Naming: packName1-Minecraft-Datapack-Squid-Workshop\
Datapack Naming: packName1-Squid-Workshop-GameVer

Example: 


## Datapack Structure Standard
    packName1-Squid-Workshop
        |____data
          |____packName1
          |  |____functions
          |    |____classes
          |    | |____main
          |    | | |____tick.mcfunction
          |    | | |____load.mcfunction: clean + declare score objs
          |    | | |____clean.mcfunction: remove score objs
          |    | |____other classes
          |    |   |____other function.mcfunction
          |    |____ui
          |      |____functions
          |        |____unload.mcfunction: clean + datapack disable
          |        |____other commands.mcfunction
          |____minecraft
             |____tags
               |____functions
                 |____load.json: datapack1/classes/main/load
                 |____tick.json: datapack1/classes/main/tick

## Function Calls

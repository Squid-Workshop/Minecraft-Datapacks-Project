## Datapack Structure Standard

        |____data
        | |____functions
        |   |____datapack1
        |   | |____classes
        |   |   |____main
        |   |   | |____tick.mcfunction
        |   |   | |____setup(/on/load/install).mcfunction: clear + declare score objs
        |   |   | |____clear(/off).mcfunction: clear score objs
        |   |   |____other classes
        |   |     |____other function.mcfunction
        |   |____ui
        |     |____datapack1
        |     | |____unistall(/off/unload).mcfunction: clear + datapack disable
        |     | |____other commands.mcfunction
        |     |____datapack2
        |       |____unistall(/off/unload).mcfunction: clear + datapack disable
        |       |____other commands.mcfunction
        |____minecraft
            |____tags
              |____functions
                |____load.json: datapack1/classes/main/setup(/on/load/install)
                |____tick.json: datapack1/classes/main/tick


         

## Datapack Structure Standard

        |____data
          |____datapack1
          |  |____functions
          |    |____classes
          |      |____main
          |      | |____tick.mcfunction
          |      | |____setup(/on/load/install).mcfunction: clear + declare score objs
          |      | |____clear(/off/clean).mcfunction: clear score objs
          |      |____other classes
          |        |____other function.mcfunction
          |____ui
          |  |____functions
          |    |____datapack1
          |      |____unistall(/off/unload).mcfunction: clear + datapack disable
          |      |____other commands.mcfunction
          |____minecraft
             |____tags
               |____functions
                 |____load.json: datapack1/classes/main/setup(/on/load/install)
                 |____tick.json: datapack1/classes/main/tick

## Function Calls


## Datapack Naming Standard
**Respository Naming**: PackName-Minecraft-Datapack-Squid-Workshop\
**Datapack Naming**: PackName-Squid-Workshop-MinecraftVersion\
**Core Name**: PackName

	Example:
	Respository Naming: Damage-Minecraft-Datapack-Squid-Workshop
	Datapack Naming: Damage-Squid-Workshop-1.16.5
	Core Name: damage


## Datapack Structure Standard
    PackName-Squid-Workshop
        |____data
          |____PackName
          |  |____functions
          |    |____classes
          |    |____main
          |    | |____tick.mcfunction
          |    | |____load.mcfunction: clean.mcfunction + [declare score objs]
          |    | |____clean.mcfunction: [remove score objs and tags]
          |    |____other classes
          |    |____other function.mcfunction
	  |
          |____ui
	  |  |____functions
	  |    |____PackName
          |      |____unload.mcfunction: clean.mcfunction + [datapack disable]
          |      |____other commands.mcfunction
	  |
          |____minecraft
             |____tags
               |____functions
                 |____load.json: PackName/classes/main/load
                 |____tick.json: PackName/classes/main/tick

## Function Calls
### Core Functions
* Core funtions are "encapsulated" under **"function PackName:classes/..."**, these functions makes the datapack functional. User should **never** be required to know or touch functions inside.
* The main class is essential, it must include three functions: 
	*	**tick.mcfunction**: Put this function in tick.json then it will be called every tick in game.
	*	**load.mcfunction**: Put this function in load.json then it will be called when the datapack is first loaded, such as "/datapack enable" or "/reload". It is responsible for setting up the datapack.
	*	**clean.mcfunction**: This function is responsible for cleaning up the scoreboards and tags, and other things this datapack created on setup and during the game.
### UI Functions
*	**"function PackName:ui/..."** is where you put all the functions that allows user to interact with this datapack, including settings, commands etc.
*	Only one functions is required here: 
	* **unload.mcfunction**: user call this function to clean up all the scoreboards, tags and other stuff this datapack ever created, and the datapack should disable itself here.
	

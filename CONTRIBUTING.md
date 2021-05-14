
## Naming Standard
**Respository Name**: PackName-Minecraft-Squid-Workshop-Project\
**Datapack Name**: PackName-Datapack-Squid-Workshop-GameVersion\
**Resourcepack Name**: PackName-Resourcepack-Squid-Workshop-MinecraftVersion\
**Core Name**: packName

	Example:
	Respository Naming: Gun-Minecraft-Squid-Workshop-Project
	Datapack Naming: Gun-Datapack-Squid-Workshop-1.16.5
	Resourcepack Name: Gun-Resourcepack-Squid-Workshop-1.16.5
	Core Name: gun


## Datapack Structure Standard

	PackName-Datapack-Squid-Workshop-GameVersion
	│  pack.mcmeta
	│  pack.png
	│
	└─data
	    ├─packName
	    │  └─functions
	    │     └─classes
	    │        ├─main
	    │        │    clean.mcfunction: [remove score objs and tags]
	    │        │    load.mcfunction: clean.mcfunction + [declare score objs]
	    │        │    tick.mcfunction]
	    │        └─other_classes
 	    │             other_function.mcfunction
 	    ├─app
 	    │  └─functions
	    │     └─packName
	    │          unload.mcfunction: clean.mcfunction + [datapack disable]
	    │          other_commands.mcfunction
	    └─minecraft
	       └─tags
		  └─functions
		       load.json: packName:classes/main/load.mcfunction
		       tick.json: packName:classes/main/tick.mcfunction


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
	

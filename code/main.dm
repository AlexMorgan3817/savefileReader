/*
/world/New()
	. = ..()
	world.log << execute_world_params()
	shutdown()


/world/proc/execute_world_params()
	text2file(readSavefile("preferences.sav"), "output.txt")
	return json_encode(params)
*/

/client/verb/ReadSaveFile(path_to_savefile as file)
	set name = "Read Savefile"

	if(isfile(path_to_savefile))
		var/result = readSavefile(path_to_savefile)
		text2file(result, "output.txt")
		world << result

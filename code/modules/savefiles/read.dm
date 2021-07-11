/proc/readSavefile(path)
/*
	var/list/p = splittext(path, "/")
	if(length(p))
		path = p[length(p)]
*/

	var/savefile/F = new(path)
	return F.ExportText("/")

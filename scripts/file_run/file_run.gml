function file_run(address, scope_level)	{
	
	var file = file_text_open_read(working_directory + address);
	if (file = -1) { return false }
	
	while (true) {
		
		//this is where the function line evaluation goes
		
		var line = file_text_read_string(file);
		line = string_upper(line);
		var func = explode(line, " ");
		
		cmd_evaluate(func, scope_level + 1);
		
		file_text_readln(file);
		if (file_text_eof(file)) { break }
		
	}
	
	return true
	
}
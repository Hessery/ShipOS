function file_run(address)	{
	
	var file = file_text_open_read(working_directory + address);
	if (file = -1) { return }
	
	while (true) {
		
		var line = file_text_read_string(file);
		line = string_upper(line);
		var func = explode(line, " ");
		
		func_evaluate(func);
		
		file_text_readln(file);
		if (file_text_eof(file)) { break }
		
	}
	
}
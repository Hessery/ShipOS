function file_run(address, scope_level)	{
	
	var file = file_text_open_read(working_directory + address);
	if (file = -1) { return false }
	
	while (true) {
		
		var line = file_text_read_string(file);
		
		line = string_upper(line);
		line_evaluate(line, scope_level);
		
		if (error) { trace(address); return false }
		
		file_text_readln(file);
		if (file_text_eof(file)) { break }
		
	}
	
	return true
	
}
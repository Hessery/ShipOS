// Sequentially lexes and evaluates each line of a func

function func_run(address, scope_level) {
	
	var file = file_text_open_read(working_directory + address);
	if (file = -1) { return -1 }
	
	while (true) {
		
		if_depth[scope_level + 1] = 0;
		scope[scope_level + 1] = []; 
		
		var str = file_text_read_string(file);
		str = string_upper(str);
		var stream = string_lex(str, scope_level + 1);
		var ret = stream_eval(stream, scope_level + 1);
		//if (ret != -1) { return ret };
		
		file_text_readln(file);
		if (file_text_eof(file)) { return "" }
		
	}
	
	return -1
	
}
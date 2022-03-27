// Sequentially lexes and evaluates each line of a func

function func_run(address, scope_level) {
	
	var file = file_text_open_read(working_directory + address);
	if (file = -1) { return -1 }
	
	while (true) {
		
		var str = file_text_read_string(file);
		str = string_upper(str);
		
		var stream = string_lex(str, scope_level);
		var ret = stream_eval(stream, scope_level);
		
		if (is_array(ret) && ret[0] = returner) {
			
			file_text_close(file);
			
			var arr = [];
			array_copy(arr, 0, ret, 1, array_length(ret));
			return arr;
		}
		
		file_text_readln(file);
		if (file_text_eof(file)) { file_text_close(file) return "" }
		
	}
	
	file_text_close(file)
	return -1
	
}
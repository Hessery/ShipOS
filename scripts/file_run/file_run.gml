// Runs a function from a file

function file_run(address, scope_level)	{
	
	var file = file_text_open_read(working_directory + address);
	if (file = -1) { return false }
	
	while (true) {
		
		var line = file_text_read_string(file);
		
		line = string_upper(line);
		line_evaluate(line, scope_level);
		
		if (error) { 
			
			var funcs = ds_map_keys_to_array(func_map);
			var addresses = ds_map_values_to_array(func_map);
			var location = array_find(addresses, address);
			var func = address;
			
			if (location != -1) {
				
				func = funcs[location];
				
			} 
			
			trace(func); 
			return false 
			
		}
		
		file_text_readln(file);
		if (file_text_eof(file)) { break }
		
	}
	
	return true
	
}
function sys_run(stream, scope_level) {
	
	if (!is_array(stream))			{ return e08 }
	if (array_length(stream) != 2)	{ return e08 }
	
	var func_arr = ds_map_keys_to_array(func_map);
	
	for (var i = 0; i < array_length(func_arr); i ++) {
		
		if (func_arr[i] = stream[1][1]) {
			
			current_func = func_map[? func_arr[i]];
			return -1
			
		};
		
	};
	
	return e08
	
}
function stream_func_eval(stream, scope_level) {
	
	var ret = cmd_eval(stream, scope_level);
	if (ret != -1) { return ret }
	
	var func_arr = ds_map_keys_to_array(func_map)
	
	for (var i = 0; i < array_length(func_arr); i ++) {
		
		if (func_arr[i] = stream[0][1]) {
			
			return func_run(func_map[? func_arr[i]], scope_level);
			
		}
		
	}
	
}
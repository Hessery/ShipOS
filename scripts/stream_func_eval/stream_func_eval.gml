function stream_func_eval(stream, scope_level) {
	
	var ret = cmd_eval(stream, scope_level);
	if (ret != -1) { return ret }
	
	var func_arr = ds_map_keys_to_array(func_map);
	
	for (var i = 0; i < array_length(func_arr); i ++) {
		
		if (func_arr[i] = stream[0][1]) {
			
			if_depth[scope_level + 1] = 0;
			scope[scope_level + 1] = [];
			
			for (var o = 1; o < array_length(stream); o ++) {
				
				// Exits empty argument
				if (stream[o][1] = "") { continue }
				
				var arg = [ "ARG" + string(o - 1), stream[o][0], stream[o][1] ];
				array_push(scope[scope_level + 1], arg);
			
			}
			
			return func_run(func_map[? func_arr[i]], scope_level + 1);
			
		}
		
	}
	
	return -1
	
}
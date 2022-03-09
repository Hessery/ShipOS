function cmd_evaluate(line, scope_level) {
	
	if (sys_command_evaluate(line, scope_level)) { return true }
	
	if (is_real(line[0][1]) && line[0][0] = identifier) {
		
		scope[scope_level + 1] = [];
		
		for (var i = 1; i < array_length(line); i ++) {
			
			var arg = [ "ARG" + string(i - 1), line[i][0], line[i][1] ];
			array_push(scope[scope_level + 1], arg);
			
		}
		
		var func_array = ds_map_values_to_array(func_map);
		file_run(func_array[line[0][1]], scope_level + 1);
		
		return true
		
	}
	
	if (error) { trace("cmd eval"); return false }
	
	return false
	
}
function cmd_evaluate(line, scope_level) {
	
	if (ds_map_exists(func_map, line[0][1])) {
		
		return file_run(func_map[? line[0][1]], scope_level);
		
	} else {
		
		return sys_command_evaluate(line, scope_level);
		
	}
	
	return -1
	
}
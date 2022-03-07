function func_evaluate(line) {
	
	if (ds_map_exists(cmd_map, line[0])) {
		
		file_run(cmd_map[? line[0]]);
		
	} else {
		
		sys_command_evaluate(line);
		
	}
	
}
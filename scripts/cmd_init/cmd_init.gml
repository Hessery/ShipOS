function cmd_init() {
	
	cmd_map = ds_map_create();
	
	var list = file_find_in(working_directory, ".sos");
	
	for (var i = 0; i < array_length(list); i ++) {
		
		var cmd_address = string_upper(list[i]);
		var cmd_short_address = string_copy(
			list[i], 
			string_last_pos("\\", cmd_address) + 1, 
			999
		);
		var cmd_file = string_copy(
			cmd_address, 
			string_last_pos("/", cmd_address) + 1, 
			999
		);
		var cmd_name = string_copy(
			cmd_file, 
			1, 
			string_length(cmd_file) - 4
		);
		
		cmd_map[? cmd_name] = cmd_short_address;
		log("loaded " + string_copy(
			list[i], 
			string_last_pos("\\", cmd_address) + 1, 999)
		);
		
	}
	
	log("");
	
}
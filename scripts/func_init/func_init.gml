function func_init() {
	
	log("");
	
	func_map = ds_map_create();
	
	var list = file_find_in(working_directory, ".sos");
	
	for (var i = 0; i < array_length(list); i ++) {
		
		var func_address = string_upper(list[i]);
		var func_short_address = string_copy(
			list[i], 
			string_last_pos("\\", func_address) + 1, 
			999
		);
		var func_file = string_copy(
			func_address, 
			string_last_pos("/", func_address) + 1, 
			999
		);
		var func_name = string_copy(
			func_file, 
			1, 
			string_length(func_file) - 4
		);
		
		func_map[? func_name] = func_short_address;
		log("loaded " + string_copy(
			list[i], 
			string_last_pos("\\", func_address) + 1, 999)
		);
		
	}
	
	log("");
	log("Functions initialised");
	
}
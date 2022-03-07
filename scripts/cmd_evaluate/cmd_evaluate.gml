// Evluates the command passed to the console.

function cmd_evaluate() {
	
	log(">" + keyboard_string)
	
	var cmd_array = explode(keyboard_string, " ");
	
	if (string_char_at(cmd_array[0], 1) = "#") {
		
		global_var_map[? cmd_array[0]] = cmd_array[1];
		
		return
		
	}
	
	if (ds_map_exists(cmd_map, cmd_array[0])) {
		
		file_run(cmd_map[? cmd_array[0]]);
		
	} else {
		
		if (!sys_command_evaluate(cmd_array)) {
			
			log("\"" + keyboard_string + "\" is not a valid function");
			
		}
		
	}
	
}
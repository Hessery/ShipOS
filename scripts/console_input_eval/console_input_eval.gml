function console_input_eval() {
	
	if (keyboard_check_pressed(vk_enter)) {
		
		if_depth[system_scope] = 0;
		log(">" + keyboard_string);
		
		var stream = string_lex(keyboard_string, system_scope);
		var output = stream_eval(stream, system_scope);
		if (output != -1) { if (!is_array(output)) { log(output) } }
		
		log("");
		
		keyboard_string = ""
	
	}
	
}
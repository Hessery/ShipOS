function console_input_eval() {
	
	if (keyboard_check_pressed(vk_enter)) {
		
		log(">" + keyboard_string);
		
		var stream = string_lex(keyboard_string, system_scope);
		var output = stream_eval(stream, system_scope);
		if (output != -1) { log(output) }
		
		//log(scope);
		log("");
		
		keyboard_string = ""
	
	}
	
}
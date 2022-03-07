function console_step() {
	
	keyboard_string = string_upper(keyboard_string);

	input_limit();

	if (keyboard_check_pressed(vk_enter)) {
	
		cmd_evaluate();
		keyboard_string = ""
	
	};

	var length = array_length(log_array);
	if (length - 23 > 0) { array_delete(log_array, 0, length - 23) };
	
}
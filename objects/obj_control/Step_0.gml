if (current_func != -1) {
	
	func_run(current_func, system_scope + 1);
	keyboard_string = "";
	
	if (keyboard_check_pressed(vk_escape)) { current_func = -1 }
	
} else {
	
	console_step();
	
}

console_log_trim();
function clipboard_step() {
	
	if (keyboard_check(vk_control)) {
		
		if (keyboard_check_pressed(ord("C"))) {
			
			clipboard_set_text(keyboard_string);
			
		}
		
		if (keyboard_check_pressed(ord("V")) && clipboard_has_text()) {
			
			keyboard_string = clipboard_get_text();
			
		}
		
	}
	
}
function system_init() {
	
	console_init();
	screen_init();
	memory_init();
	func_init();
	
	draw_set_font(font_add_sprite(spr_fnt_default, 33, false, 1));
	
	if (!file_run("/system/startup.sos")) {
		
		log("");
		log("startup.sos not found");
		log("");
		log("");
		
	};
	
}
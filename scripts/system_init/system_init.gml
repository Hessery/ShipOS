function system_init() {
	
	screen_init();
	console_init();
	cmd_init();
	
	draw_set_font(font_add_sprite(spr_fnt_default, 33, false, 1));
	
	file_run("/system/startup.sos");
	
}
console_init();
screen_init();
memory_init();
func_init();
	
draw_set_font(font_add_sprite(spr_fnt_default, 33, false, 1));

if (func_run("/system/startup.sos", system_scope) = -1) {
		
	log("");
	log("startup.sos not found");
	log("");
	log("");
		
};
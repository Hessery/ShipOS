function screen_init() {
	
	screen_surface = surface_create(room_width, room_height);
	
	surface_set_target(screen_surface);
		
		draw_clear_alpha(c_black, 0);
		
	surface_reset_target();
	
}
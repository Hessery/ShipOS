function console_draw() {
	
	var st = draw_set([c_white]);
	
	for (var i = 0; i < array_length(log_array); i ++) {
	
		draw_text(1, (i * 6) + 1, log_array[i]);
	
	}
	
	draw_text(1, room_height - chr_height + 1, keyboard_string + "_");
	
	draw_set(st);
	
}
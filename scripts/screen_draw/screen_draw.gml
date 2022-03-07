function console_draw() {
	
	for (var i = 0; i < array_length(log_array); i ++) {
	
		draw_text(1, (i * 6) + 1, log_array[i]);
	
	}

	draw_text(1, room_height - chr_height + 1, keyboard_string + "_");
	
}
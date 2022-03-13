// Trims lines of the console log as they go off screen

function console_log_trim() {
	
	var length = array_length(log_array);
	if (length - 23 > 0) { array_delete(log_array, 0, length - 23) };
	
}
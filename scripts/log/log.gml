function log(message) {
	
	//if (is_array(message) && array_length(message) > 2) { message = message[1] }
	
	message = string(message);
	
	array_push(log_array, string_upper(message));
	
}
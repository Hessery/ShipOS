function log(message) {
	
	if (is_array(message)) { message = message[1] }
	
	message = string(message);
	
	array_push(log_array, string_upper(message));
	
}
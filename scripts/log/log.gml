// logs a message to the console. If the message is more than 48 characters
// it splits the string and logs the rest of the message to the next line.

function log(message) {
	
	message = string(message);
	
	var message_pt1 = string_copy(message, 1, 48);
	var message_pt2 = string_copy(message, 49, string_length(message) - 48);
	
	array_push(log_array, string_upper(message_pt1));
	if (message_pt2 != "") { log(message_pt2) }
	
}



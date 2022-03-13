// Finds and outputs a string

function string_literal_string_lex(str, original_str, token_pos) {
	
	var pos = 1
	var arr = explode(original_str, " ");
	
	if (string_char_at(str, 1) = "\"") {
		
		for (var i = 0; i < token_pos; i ++) {
			
			pos += string_length(arr[i]) + 1;
			
		}
		
		var len = string_pos_ext("\"", original_str, pos) - pos;
		var out_str = string_copy(original_str, pos + 1, len - 1);
		
		skip = string_count(" ", out_str);
		
		return [ literal, out_str ]
		
	}
	
	return -1
	
}
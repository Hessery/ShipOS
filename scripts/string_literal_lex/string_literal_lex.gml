function string_literal_lex(str, original_str, pos) {
	
	if (str = TRUE)		{ return [ literal, TRUE ] }
	if (str = FALSE)	{ return [ literal, FALSE ] }
	
	var output = string_literal_string_lex(str, original_str, pos);
	if (output != -1) { return output }
	
	var output = string_literal_integer_lex(str);
	if (output != -1) { return output }
	
	return -1
	
}
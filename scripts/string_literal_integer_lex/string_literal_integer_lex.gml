function string_literal_integer_lex(str) {
	
	var str_let = string_letters(str);
	var str_num = string_digits(str);
	
	if (str_let = "" && str_num != "") { return [ literal, real(str_num) ] }
	
	return -1
	
}
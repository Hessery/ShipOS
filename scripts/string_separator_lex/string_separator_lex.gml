function string_separator_lex(str) {
	
	var output = -1
	
	switch (str) {
		
		case "(":	output = l_parenth;		break;
		case ")":	output = r_parenth;		break;
		case "[":	output = l_bracket;		break;
		case "]":	output = r_bracket;		break;
		
	}
	
	if (output != -1) { return [ separator, output ] }
	return -1;
	
}
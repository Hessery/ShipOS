function string_keyword_lex(str) {
	
	var output = -1
	
	switch (str) {
		
		case "IF":		output = IF;		break;
		case "END":		output = END;		break;
		case "VAR":		output = VAR		break;
		case "GLOBAL":	output = GLOBAL		break;
		case "RETURN":	output = RETURN		break;
		
	}
	
	if (output != -1) { return [ keyword, output ] }
	return -1;
	
}
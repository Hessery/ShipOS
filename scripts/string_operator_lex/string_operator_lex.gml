function string_operator_lex(str) {
	
	var output = -1
	
	switch (str) {
		
		case "=":	output = equals;	break;
		case "+":	output = add;		break;
		case "-":	output = subtract	break;
		case "/":	output = divide		break;
		case "*":	output = multiply	break;
		
	}
	
	if (output != -1) { return [ operator, output ] }
	return -1;
	
}
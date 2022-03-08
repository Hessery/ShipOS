function string_lex(str) {
	
	str = string_upper(str);
	
	var line = explode(str, " ");
	var out = [];
	var token_count = array_length(line)
	
	for (var i = 0; i < token_count; i ++) {
		
		// Comments
		if (string_copy(line[i], 0, 2) = "//") {
			
			out[i] = [comment];
			break;
		
		}
		
		// Operators
		if (line[i] = "=")	{ out[i] = [operator, equals]; continue }
		if (line[i] = "+")	{ out[i] = [operator, add]; continue }
		if (line[i] = "-")	{ out[i] = [operator, subtract]; continue }
		if (line[i] = "/")	{ out[i] = [operator, divide]; continue }
		if (line[i] = "*")	{ out[i] = [operator, multiply]; continue }
		if (line[i] = "+=")	{ out[i] = [operator, rel_add]; continue }
		if (line[i] = "-=")	{ out[i] = [operator, rel_subtract]; continue }
		if (line[i] = "/=")	{ out[i] = [operator, rel_divide]; continue }
		if (line[i] = "*=")	{ out[i] = [operator, rel_multiply]; continue }
		
		
		// Separators
		if (line[i] = "(")	{ out[i] = [separator, l_parenth]; continue }
		if (line[i] = ")")	{ out[i] = [separator, r_parenth]; continue }
		if (line[i] = "{")	{ out[i] = [separator, l_c_bracket]; continue }
		if (line[i] = "}")	{ out[i] = [separator, r_c_bracket]; continue }
		if (line[i] = "[")	{ out[i] = [separator, l_bracket]; continue }
		if (line[i] = "]")	{ out[i] = [separator, r_bracket]; continue }
		
		
		// Keywords
		if (line[i] = "IF")		{ out[i] = [keyword, IF]; continue }
		if (line[i] = "ELSE")	{ out[i] = [keyword, ELSE]; continue }
		if (line[i] = "END")	{ out[i] = [keyword, END]; continue }
		
		
		// Literals
		if (line[i] = "TRUE")	{ out[i] = [literal, TRUE]; continue }
		if (line[i] = "FALSE")	{ out[i] = [literal, FALSE]; continue }
		if (
			string_char_at(line[i], 1) = "\"" && 
			string_char_at(line[i], string_length(line[i])) = "\""
		) {
			
			out[i] = [literal, "\"" + line[i] + "\""];
			
		}
		if (string_letters(line[i]) = "" && string_digits(line[i]) != "") {
			
			out[i] = [literal, string_digits(line[i])];
			
		}
		// detect integer
		// detect string
		
		
		// Identifiers
		var list = ds_map_keys_to_array(cmd_map);
		///log(list);
		var pos = array_find(list, line[i]);
		if (pos = -1) { pos = line[i] }
		
		out[i] = [identifier, pos];
		
	}
	
	log(out);
	
}
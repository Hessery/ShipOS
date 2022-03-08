function string_lex(str, scope_level) {
	
	str = string_upper(str);
	
	var line = explode(str, " ");
	var out = [];
	var token_count = array_length(line);
	var s = 0;
	
	for (var i = 0; i < token_count; i ++) {
		
		// Comments
		if (string_copy(line[i], 0, 2) = "//") {
			
			out[i - s] = [comment];
			break;
		
		}
		
		// Operators
		if (line[i] = "=")	{ out[i - s] = [operator, equals]; continue }
		if (line[i] = "+")	{ out[i - s] = [operator, add]; continue }
		if (line[i] = "-")	{ out[i - s] = [operator, subtract]; continue }
		if (line[i] = "/")	{ out[i - s] = [operator, divide]; continue }
		if (line[i] = "*")	{ out[i - s] = [operator, multiply]; continue }
		if (line[i] = "+=")	{ out[i - s] = [operator, rel_add]; continue }
		if (line[i] = "-=")	{ out[i - s] = [operator, rel_subtract]; continue }
		if (line[i] = "/=")	{ out[i - s] = [operator, rel_divide]; continue }
		if (line[i] = "*=")	{ out[i - s] = [operator, rel_multiply]; continue }
		
		
		// Separator
		if (line[i] = "(")	{ out[i - s] = [separator, l_parenth]; continue }
		if (line[i] = ")")	{ out[i - s] = [separator, r_parenth]; continue }
		if (line[i] = "{")	{ out[i - s] = [separator, l_c_bracket]; continue }
		if (line[i] = "}")	{ out[i - s] = [separator, r_c_bracket]; continue }
		if (line[i] = "[")	{ out[i - s] = [separator, l_bracket]; continue }
		if (line[i] = "]")	{ out[i - s] = [separator, r_bracket]; continue }
		
		
		// Keywords
		if (line[i] = "IF")		{ out[i - s] = [keyword, IF]; continue }
		if (line[i] = "ELSE")	{ out[i - s] = [keyword, ELSE]; continue }
		if (line[i] = "END")	{ out[i - s] = [keyword, END]; continue }
		if (line[i] = "VAR")	{ out[i - s] = [keyword, VAR]; continue }
		
		
		// Literals
		if (line[i] = "TRUE")	{ out[i - s] = [literal, TRUE]; continue }
		if (line[i] = "FALSE")	{ out[i - s] = [literal, FALSE]; continue }
		if (string_letters(line[i]) = "" && string_digits(line[i]) != "") {
			
			out[i - s] = [literal, real(string_digits(line[i]))];
			continue
			
		}
		if (string_char_at(line[i], 1) = "\"") {
			
			var out_string = ""
			
			while (string_char_at(line[i], string_length(line[i])) != "\"") {
				
				out_string += line[i] + " ";
				i ++
				s ++
				
			}
			
			out_string += line[i];
			out_string = string_copy(
				out_string, 
				2,
				string_length(out_string) - 2
			)
			out[i - s] = [literal, out_string];
			continue
			
		}
		
		// Identifiers
		// Variables
		for (var o = 0; o < array_length(scope[scope_level]); o ++) {
			
			if (scope[scope_level][o][0] = line[i]) {
				
				var token_type = scope[scope_level][o][1];
				var token_value	= scope[scope_level][o][2];
				
				line[i - s] = [ token_type, token_value ];
				continue
				
			}
			
		}
		
		// Func
		var list = ds_map_keys_to_array(func_map);
		var pos = array_find(list, line[i]);
		if (pos = -1) { pos = line[i] }
		
		out[i - s] = [identifier, pos];
		
	}
	
	return out
	
}
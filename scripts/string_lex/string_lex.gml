// Turns a string into a token stream

function string_lex(str, scope_level) {
	
	if (str = "") { return [[ comment, comment ]] }
	
	var arr = explode(str, " ");
	var out = [];
	skip = 0;
	
	for (var i = 0; i < array_length(arr); i ++) {
		
		var output = string_comment_lex(arr[i]);
		if (output != -1) { array_push(out, [[ comment, comment ]]) continue }
		
		var output = string_operator_lex(arr[i]);
		if (output != -1) { array_push(out, output); continue }
		
		var output = string_separator_lex(arr[i]);
		if (output != -1) { array_push(out, output); continue }
		
		var output = string_keyword_lex(arr[i]);
		if (output != -1) { array_push(out, output); continue }
		
		var output = string_literal_lex(arr[i], str, i);
		if (output != -1) { i += skip; array_push(out, output); continue }
		
		array_push(out, [ identifier, arr[i] ]);
		
	}
	
	return out;
	
}
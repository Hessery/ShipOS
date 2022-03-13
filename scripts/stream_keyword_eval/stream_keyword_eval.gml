function stream_keyword_eval(stream, scope_level) {
	
	show_message(stream);
	
	if (stream[0][0] != keyword) { return -1 }
	
	switch (stream[0][1]) {
			
		case VAR:
			
			if (stream[2][0] != operator)	{ return -1 }
			if (stream[2][1] != equals)		{ return -1 }
			if (stream[1][0] != identifier)	{ return -1 }
			
			if (array_length(stream) > 3) {
				
				array_push(
					scope[scope_level], 
					[ stream[1][1], stream[3][0], stream[3][1] ]
				);
				
				return scope[scope_level]
				
			}
			
		break;
		
		case GLOBAL:
			
			if (stream[2][0] != operator)	{ return -1 }
			if (stream[2][1] != equals)		{ return -1 }
			if (stream[1][0] != identifier)	{ return -1 }
			
			if (array_length(stream) > 3) {
				
				array_push(
					scope[system_scope], 
					[ stream[1][1], stream[3][0], stream[3][1] ]
				);
				
				return scope[system_scope]
				
			}
			
		break;
		
		case RETURN:
			
			// Returns a value and tells the func_run to end if in a func
				
		break;
			
	}
	
	return -1
	
}
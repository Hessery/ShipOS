function stream_identifier_eval(stream, scope_level) {
	
	if (array_length(stream) = 1) { 
		
		var ret = token_fetch(stream[0], scope_level);
		if (ret != -1) { return ret[1] } else { return e01 }
		
	}
	
	if (array_length(stream) < 3)	{ return -1 }
	
	if (stream[0][0] != identifier) { return e02 }
	if (stream[1][0] != operator)	{ return e03 }
	if (stream[1][1] != equals)		{ return e04 }
	
	for (var o = 0; o < array_length(scope[scope_level]); o ++) {
		
		if (scope[scope_level][o][0] = stream[0][1]) {
			
			log(scope_level);
			
		}
		
	}
	
	for (var o = 0; o < array_length(scope[system_scope]); o ++) {
		
		if (scope[system_scope][o][0] = stream[0][1]) {
			
			log(system_scope);
			
		}
		
	}
	
	return -1
	
}
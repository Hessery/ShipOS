// Tries to fetch a token from a specific scope level

function scope_fetch(token, scope_level) {
	
	for (var o = 0; o < array_length(scope[scope_level]); o ++) {
		
		var value1 = scope[scope_level][o][0];
		var value2 = token[1];
		
		if (value1 = value2) {
			
			var type	= scope[scope_level][o][1];
			var value	= scope[scope_level][o][2];
			
			return [ type, value ];
			
		}
		
	}
	
	return -1
	
}
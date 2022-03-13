// Tries to fetch a token from a specific scope level

function scope_fetch(token, scope_level) {
	
	for (var o = 0; o < array_length(scope[scope_level]); o ++) {
		
		if (scope[scope_level][o][0] = token[1]) {
			
			var type	= scope[scope_level][o][1];
			var value	= scope[scope_level][o][2];
			
			return [ type, value ];
			
		}
		
	}
	
	return -1
	
}
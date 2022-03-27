// Fetches a token from memory

function token_fetch(token, scope_level) {
	
	var ret = scope_fetch(token, scope_level);
	if (ret != -1) { return ret }
	
	var ret = scope_fetch(token, system_scope);
	if (ret != -1) { return ret }
	
	return token
	
}
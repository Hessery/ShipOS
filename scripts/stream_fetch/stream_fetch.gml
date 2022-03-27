// Fetches all the tokens within a stream

function stream_fetch(stream, scope_level) {
	
	var out = [];
	
	for (var i = 0; i < array_length(stream); i ++) {
		
		if (stream[i][0] != identifier) { out[i] = stream[i] }
		
		var ret = token_fetch(stream[i], scope_level);
		if (ret != -1) { out[i] = [ ret[0], ret[1] ] }
		
	}
	
	return out
	
}
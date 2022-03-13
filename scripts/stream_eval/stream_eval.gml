// Evaluates a stream of tokens stored in an array

function stream_eval(stream, scope_level) {
	
	// First check keywords for IF END and ELSE
	//if_depth[scope_level] += stream_if_depth_eval(stream, scope_level);
	
	// Then check what if_depth we have
	if (if_depth[scope_level] = 0) {
		
		var output = stream_keyword_eval(stream, scope_level);
		if (output != -1) { return output }
		
		var output = stream_literal_eval(stream, scope_level);
		if (output != -1) { return output }
		
		var output = stream_identifier_eval(stream, scope_level);
		if (output != -1) { return output }
		
		
	}
	
	return -1
	
}
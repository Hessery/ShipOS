function stream_literal_eval(stream, scope_level) {
	
	// Fetch the values for the calculation
	var equ = stream_fetch(stream, scope_level);
	
	// Return the calculation
	return equ_eval(equ);
	
}
function console_evaluate_error() {
	
	if (error) {
		
		log("err:");
		log(string_copy(trace_str, 4, string_length(trace_str)));
		trace_str = "";
		error = false;
		
	}
	
}
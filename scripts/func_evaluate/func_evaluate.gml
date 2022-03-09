// Evluates the command passed to the console.

function func_evaluate() {
	
	log(">" + keyboard_string)
	
	error = false;
	line_evaluate(keyboard_string, system_scope);
	
	if (error) {
		
		log("err:");
		log(string_copy(trace_str, 4, string_length(trace_str)));
		trace_str = "";
		error = false;
		
	}
	
}
// Evluates the command passed to the console.

function console_evaluate() {
	
	log(">" + keyboard_string)
	
	error = false;
	line_evaluate(keyboard_string, system_scope);
	
	console_evaluate_error();
	
}
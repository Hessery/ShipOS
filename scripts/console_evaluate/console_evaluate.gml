// Evluates the command passed to the console.

function console_evaluate() {
	
	log(">" + keyboard_string)
	
	error = false;
	var ret = line_evaluate(keyboard_string, system_scope);
	if (ret != undefined) { log(ret) }
	if_depth = [0];
	
	console_evaluate_error();
	
}
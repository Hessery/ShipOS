// Prints text to the log

function sys_print(stream, scope_level) {
	
	var arr = []
	array_copy(arr, 0, stream, 1, array_length(stream));
	var ret = equ_eval(arr);
	log(ret[1]);
	
	return -1
	
}
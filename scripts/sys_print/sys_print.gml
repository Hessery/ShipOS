// Prints text to the log

function sys_print(stream, scope_level) {
	
	var arr = []
	array_copy(arr, 0, stream, 1, array_length(stream));
	var ret = stream_eval(arr, scope_level);
	
	if (is_array(ret)) { log(ret[1]) } else { log(ret) }
	
	return -1
	
}
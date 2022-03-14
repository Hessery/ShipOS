// Evaluates the actions to take from a given command

function cmd_eval(stream, scope_level) {
	
	//if (is_array(stream))		{ return -1 }
	//if (is_array(stream[0]))	{ return -1 }
	
	switch (stream[0][1]) {
		
		case "PRINT":	sys_print(stream, scope_level);		return [ comment, comment ]	break
		
	}
	
	return -1
	
}
// Evaluates the actions to take from a given command

function cmd_eval(stream, scope_level) {
	
	switch (stream[0][1]) {
		
		case "PRINT":		sys_print(stream, scope_level);		return [ comment, comment ]	break;
		case "MEMORY":		sys_memory(stream, scope_level);	return [ comment, comment ]	break;
		case "REBOOT":		sys_reboot(stream, scope_level);	return [ comment, comment ] break;
		case "SHUTDOWN":	sys_shutdown(stream, scope_level);	return [ comment, comment ] break;
		case "RUN":			sys_run(stream, scope_level);		return [ comment, comment ] break;
	}
	
	return -1
	
}
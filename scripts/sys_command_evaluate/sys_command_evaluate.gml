function sys_command_evaluate(line, scope_level) {
	
	switch (line[0][1]) {
		
		// Keywords
		case "PRINT":	sys_print(line, scope_level);	return true	break;
		case "REBOOT":	sys_reboot(line, scope_level);	return true	break;
		case "MEMORY":	sys_memory(line, scope_level);	return true	break;
		
	}
	
	if (error) { trace("syscmd"); return false }
	
	return false;
	
}
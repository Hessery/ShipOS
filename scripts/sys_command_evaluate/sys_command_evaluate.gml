function sys_command_evaluate(line) {
	
	switch (line[0]) {
		
		// Keywords
		case "IF":		sys_if(line);		break;
		case "AND":		sys_and(line);		break;
		case "OR":		sys_or(line);		break;
		case "END":		sys_end();			break;
		case "ELSE":	sys_else(line);		break;
		case "VAR":		sys_var(line);		break;
		
		case "PRINT":	sys_print(line);	break;
		case "REBOOT":	sys_reboot(line);	break
	}
	
	return true;
	
}
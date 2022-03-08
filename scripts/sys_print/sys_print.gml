function sys_print(line, scope_level) {
	
	switch (line[1][0]) {
		
		case literal:		
			
			log(line[1][1]);
			
			return true	
			
		break;
		
		case identifier:	
			
			log(line[1][1][1]);
			
			return true	
			
		break;
		
	}
	
	return false
	
}
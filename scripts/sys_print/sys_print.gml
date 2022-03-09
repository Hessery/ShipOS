// Prints text to the log

function sys_print(line, scope_level) {
	
	switch (line[1][0]) {
		
		case literal:		
			
			log(line[1][1]);
			
			return true	
			
		break;
		
		case identifier:	
			
			if (!is_array(line[1][1])) { 
				
				trace("print");
				return false 
			
			}
			
			log(line[1][1][1]);
			
			return true	
			
		break;
	
	}
	
	return false
	
}
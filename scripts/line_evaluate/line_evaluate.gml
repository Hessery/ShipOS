function line_evaluate(str, scope_level) {
	
	// Tokenizes the input string
	var line = string_lex(str, scope_level);
	
	// Skip lines with if_depth
	if (if_depth[scope_level] > 0) {
		
		if (line[0][0] = keyword) {
			
			if (line[0][1] = IF)	{ if_depth[scope_level] ++ }
			if (line[0][1] = END)	{ if_depth[scope_level] -- }
			
		}
		
		if (if_depth[scope_level] > 0) { return }
		
	}
	
	// -- Comment --
	if (line[0][0] = comment) { return }
	
	// -- Evaluation --
	if (line[0][0] = keyword) {
		
		switch (line[0][1]) {
			
			case IF:	
				
				var equation = [];
				
				array_copy(equation, 0, line, 1, array_length(line));
				
				if!(equation_evaluate(equation, true)[1]) {
					
					if_depth[scope_level] = 1;
					
				}
				
				return true
				
			break;
			
			case END:	return true	break;
			case ELSE:	return true	break;
			
		}
		
	}
	
	if (line[0][0] = literal) {
		
		var output = equation_evaluate(line, false);
		return output[1];
		
	}
	
	// -- Assignment --
	// Creation
	if (
		array_length(line) = 4 &&
		line[0][1] = VAR &&
		is_string(line[1][1]) &&
		line[2][1] = equals
	) {
		
		var mem_item = [ line[1][1], line[3][0], line[3][1] ]
		var mem_slot = array_find(scope[scope_level], line[0][1]);
		
		if (mem_slot = -1) {
			
			array_push(scope[scope_level], mem_item);
			
		} else {
			
			scope[scope_level][mem_slot] = mem_item;
			
		}
		
		return
		
	}
	
	
	// Assign
	
	
	// -- Function --
	if (cmd_evaluate(line, scope_level)) { return };
	
	if (error) { trace("line eval"); return false }
	
	// Error
	log("err: " + str);
	
}
function line_evaluate(str, scope_level) {
	
	// Tokenizes the input string
	var line = string_lex(str, scope_level);
	
	// -- Comment --
	if (line[0][0] = comment) { return }
	
	// -- Evaluation --
	if (line[0][0] = keyword) {
		
		switch (line[0][1]) {
			
			case IF:	
				
				var equation = [];
				
				array_copy(equation, 0, line, 1, array_length(line));
				
				log(equation_evaluate(equation, true));
				
				return true	
				
			break;
			
			case END:	log("IF");	return true	break;
			case ELSE:	log("IF");	return true	break;
			
		}
		
	}
	
	if (line[0][0] = literal) {
		
		var output = equation_evaluate(line, false);
		log(output[1]);
		return
		
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
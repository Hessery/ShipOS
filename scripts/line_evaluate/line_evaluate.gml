function line_evaluate(str, scope_level) {
	
	// Tokenizes the input string
	var line = string_lex(str, scope_level);
	
	//log(line);
	
	// Evaluation
	switch (line[0][1]) {
		
		case IF:		break;
		case END:		break;
		case ELSE:		break;
		
	}
	
	// Assignment
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
	
	// Function
	if (cmd_evaluate(line, scope_level)) { return };
	
	
	// Error
	log("err: " + str);
	
	
	
}
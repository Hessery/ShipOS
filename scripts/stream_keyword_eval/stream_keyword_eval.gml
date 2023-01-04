function stream_keyword_eval(stream, scope_level) {
	
	if (stream[0][0] != keyword) { return -1 }
	
	switch (stream[0][1]) {
			
		case VAR:
			
			if (array_length(stream) < 4)	{ return -1 }
			
			if (stream[2][0] != operator)	{ return -1 }
			if (stream[2][1] != equals)		{ return -1 }
			if (stream[1][0] != identifier)	{ return -1 }
			
			var pos = -1;
			
			for (var i = 0; i < array_length(scope[scope_level]); i ++) {
				
				if (scope[scope_level][i][0] = stream[1][1]) {
					
					pos = i
					break
					
				}
				
			}
			
			if (pos != -1) { array_delete(scope[scope_level], pos, 1) }
			
			var mem_item = [ stream[1][1], stream[3][0], stream[3][1] ]
			var mem_slot = array_find(scope[scope_level], stream[0][1]);
			
			if (mem_slot = -1) {
			
				array_push(scope[scope_level], mem_item);
			
			} else {
			
				scope[scope_level][mem_slot] = mem_item;
			
			}
			
			return mem_item
			
		break;
		
		case GLOBAL:
			
			if (array_length(stream) < 4)	{ return -1 }
			if (stream[2][0] != operator)	{ return -1 }
			if (stream[2][1] != equals)		{ return -1 }
			if (stream[1][0] != identifier)	{ return -1 }
			
			var pos = -1;
			
			for (var i = 0; i < array_length(scope[system_scope]); i ++) {
				
				if (scope[system_scope][i][0] = stream[1][1]) {
					
					pos = i
					break
					
				}
				
			}
			
			//if (pos != -1) { array_delete(scope[system_scope], pos, 1) }
			
			var equ = [];
			array_copy(equ, 0, stream, 3, array_length(stream));
			
			//var test = stream_fetch(equ, scope_level);
			var output = equ_eval(equ, scope_level);
			
			if (pos != -1) { array_delete(scope[system_scope], pos, 1) }
			array_push(
				scope[system_scope], 
				[ stream[1][1], output[0], output[1] ]
			);
				
			return scope[system_scope]
			
		break;
		
		case RETURN:
			
			var arr = [];
			array_copy(arr, 0, stream, 1, array_length(stream));
			var ret = stream_eval(arr, scope_level);
			
			var ret_arr = [returner];
			array_copy(ret_arr, 1, ret, 0, array_length(arr) + 1);
			return ret_arr;
			
		break;
		
		case WHILE:
			
			show_message("While");
			
		break;
			
	}
	
	return -1
	
}
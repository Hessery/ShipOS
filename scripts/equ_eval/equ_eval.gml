// Evaluates an equation

function equ_eval(stream, scope_level) {
	
	// Vars not being fetched correctly
	var equ = stream_fetch(stream, scope_level);
	
	// Make sure were only using integers or strings
	var is_str = false;
	var is_int = false;
	var equals_pos = -1;
	for (var i = 0; i < array_length(equ); i ++) {
		
		if (equ[i][0] = operator && equ[i][1] = equals) {
			
			if (equals_pos != -1) { return e06 }
			equals_pos = i;
			
		}
		
		if (equ[i][0] = literal) {
			
			is_str = max(is_str, is_string(equ[i][1]));
			is_int = max(is_int, is_numeric(equ[i][1]));
			
		}
		
		if (is_str && is_int) { return e05 }
		
	}
	
	// Join strings
	if (is_str) {
		
		for (var i = 0; i < array_length(equ); i ++) {
			
			if (
				equ[i][0] = operator && 
				equ[i][1] != equals && 
				equ[i][1] != add
			) { return e07 }
			
		}
		
		// Add
		if (equals_pos = -1) {
			
			var str = equ[0][1];
			for (var i = 2; i < array_length(equ); i += 2) {
				
				str += equ[i][1];
				
			}
			
			return [ literal, str ]
			
		// Equate
		} else {
			
			var left_equ = []
			array_copy(left_equ, 0, equ, 0, equals_pos);
			var left_str = left_equ[0][1];
			
			for (var i = 2; i < array_length(left_equ); i += 2) {
				
				left_str += left_equ[i][1];
				
			}
			
			var right_equ = [];
			array_copy(right_equ, 0, equ, equals_pos + 1, array_length(equ))
			var right_str = right_equ[0][1];
			
			for (var i = 2; i < array_length(right_equ); i += 2) {
				
				right_str += right_equ[i][1]
				
			}
			
			return [ literal, left_str = right_str ]
			
		}
		
	}
	
	// Calc ints
	if (is_int) {
		
		// Evaluate
		if (equals_pos = -1) {
			
			var output = equ[0][1];
			for (var i = 2; i < array_length(equ); i += 2) {
				
				if (equ[i][0] = separator && equ[i][1] = l_parenth) {
					
					var inside_equ = [];
					
					while (true) {
						
						if (
							equ[i][0] = separator &&
							equ[i][1] = r_parenth
						) {
							
							break
							
						}
						
						array_push(inside_equ, [ equ[i][0], equ[i][1] ]);
						array_delete(equ, i, 1);
						
					}
					
					array_delete(equ, i, 1);
					array_delete(inside_equ, 0, 1);
					
					array_push(equ, equ_eval(inside_equ, scope_level));
					
				}
				
				var val = equ[i][1];
				
				switch (equ[i - 1][1]) {
					
					case add:		output = output + val;	break
					case subtract:	output = output - val;	break
					case divide:	output = output / val;	break
					case multiply:	output = output * val;	break
					
				}
				
			}
			
			return [ literal, output ]
			
		// Equate
		} else {
			
			var left_equ = []
			array_copy(left_equ, 0, equ, 0, equals_pos);
			var left_solved = equ_eval(left_equ, scope_level);
			
			var right_equ = [];
			array_copy(right_equ, 0, equ, equals_pos + 1, array_length(equ));
			var right_solved = equ_eval(right_equ, scope_level);
			
			if (!is_array(right_solved) || !is_array(left_solved)) { return -1 }
			
			return [ literal, left_solved[1] = right_solved[1] ]
			
		}
		
	}
	
	return -1
	
}
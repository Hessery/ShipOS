// Evaluates a equation given as an array of tokens

function equation_evaluate(equation, bool) {
	
	if (equation[0][0] != literal) { 
		
		trace("equation"); 
		return [literal, FALSE]
		
	}
	if (is_real(equation[0][1])) {
	
		var i = 1;
		var compare = false;
		var l_out = equation[0][1];
		var operation = -1;
	
		while (true) {
		
			if (i + 1 >= array_length(equation)) { break }
			if (
				equation[i][0] = operator &&
				equation[i][1] = equals
			) {
			
				compare = true;
				break
			
			}
		
			operation = equation[i][1];
		
			if (
				equation[i + 1][0] = separator &&
				equation[i + 1][1] = l_parenth
			) {
			
				var o = i + 2;
				var sub_equ = [];
			
				while (
					equation[o][0] != separator ||
					equation[o][1] != r_parenth
				) {
				
					array_push(sub_equ, equation[o]);
					o ++
				
					if (o > array_length(equation)) { break }
				
				}
			
				i += o - 2;
			
				var number = equation_evaluate(sub_equ, false)[1];
			
			} else {
			
				var number = equation[i + 1][1];
			
			}
		
			switch (operation) {
			
				case add:		l_out = l_out + number;		break;
				case subtract:	l_out = l_out - number;		break;
				case divide:	l_out = l_out / number;		break;
				case multiply:	l_out = l_out * number;		break;
			
			}
		
			i += 2;
		
		}
	
		if (compare) {
		
			i ++
		
			var r_equation = []
			array_copy(r_equation, 0, equation, i, array_length(equation));
		
			var r_out = equation_evaluate(r_equation, false)[1];
		
			if (l_out = r_out) { 
				
				return [literal, TRUE] 
				
			} else { 
				
				return [literal, FALSE]
				
			}
		
		} else {
		
			if (bool) {
			
				if (l_out) { 
				
					return [literal, TRUE] 
				
				} else { 
				
					return [literal, FALSE]
				
				}
			
			} else {
			
				return [literal, l_out]
			
			}
		
		}
	
	} else {
		
		var equals_pos = -1;
		
		for (var o = 0; o < array_length(equation); o ++) {
			
			if (
				equation[o][0] = operator &&
				equation[o][1] = equals
			) {
				
				equals_pos = o;
				break
				
			}
			
		}
		
		if (equals_pos != -1) {
			
			var l_side = [];
			
			for (var o = 0; o < equals_pos; o ++) {
				
				array_push(l_side, equation[o]);
				
			}
			
			var r_side = [];
			
			for (var o = equals_pos + 1; o < array_length(equation); o ++) {
				
				array_push(r_side, equation[o]);
				
			}
			
			var l_out = equation_evaluate(l_side, false);
			var r_out = equation_evaluate(r_side, false);
			
			return [literal, l_out[1] = r_out[1]]
			
		} else {
		
			var i = 1;
			var output = equation[0][1];
		
			while (true) {
			
				if (i + 1 >= array_length(equation)) { break }
				if (
					equation[i][1] != operator ||
					equation[i][0] != add ||
					equation[i + 1][0] != literal
				) { trace("equation"); break }
			
				output += equation[i + 1][1]
			
				i += 2;
			
			}
		
			return [literal, output]
		
		}
		
	}
	
}
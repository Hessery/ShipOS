function equation_evaluate(equation, bool) {
	
	if (equation[0][0] != literal) { trace("equation"); return }
	
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
	
	//var equ = explode(equation, " ");

	//var equal = false;

	//var i = 1;
	//var output = real(equ[0]); 
	//var operation = -1;

	//while (!equal) {
	
	//	if (i + 1 >= array_length(equ) - 1) { equal = true }
	
	//	var operation = -1
	
	//	switch (equ[i]) {
		
	//		case "+":	operation = add			break;
	//		case "-":	operation = subtract	break;
	//		case "=":	operation = equals		break;
	//		case "/":	operation = divide		break;
	//		case "*":	operation = multiply	break;
		
	//	}
	
	//	if (operation = -1) { break }
	
	//	if (equ[i + 1] = "(") {
		
	//		var o = i + 2;
			
	//		var sub_equ = ""
			
	//		while (equ[o] != ")") {
				
	//			sub_equ += equ[o] + " ";
	//			o ++
				
	//			if (o > array_length(equ)) { break }
				
	//		}
			
	//		var number = equation_evaluate(sub_equ);
		
	//	} else {
	
	//		var number = string_digits(equ[i + 1]);
			
	//	}
		
	//	if (number != "") {
		
	//		number = real(number);
		
	//		switch (operation) {
			
	//			case add:		output = output + number;	break;
	//			case subtract:	output = output - number;	break;
	//			case divide:	output = output / number;	break;
	//			case multiply:	output = output * number;	break;
			
	//		}
		
	//		i += 2;
		
	//	}

	
	//}
	
	//return output
	
}
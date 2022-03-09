function equation_evaluate(equation) {
	
	var equ = explode(equation, " ");

	var equal = false;

	var i = 1;
	var output = real(equ[0]); 
	var operation = -1;

	while (!equal) {
	
		if (i + 1 >= array_length(equ) - 1) { equal = true }
	
		var operation = -1
	
		switch (equ[i]) {
		
			case "+":	operation = add			break;
			case "-":	operation = subtract	break;
			case "=":	operation = equals		break;
			case "/":	operation = divide		break;
			case "*":	operation = multiply	break;
		
		}
	
		if (operation = -1) { break }
	
		if (equ[i + 1] = "(") {
		
			var o = i + 2;
			
			var sub_equ = ""
			
			while (equ[o] != ")") {
				
				sub_equ += equ[o] + " ";
				o ++
				
				if (o > array_length(equ)) { break }
				
			}
			
			var number = equation_evaluate(sub_equ);
		
		} else {
	
			var number = string_digits(equ[i + 1]);
			
		}
		
		if (number != "") {
		
			number = real(number);
		
			switch (operation) {
			
				case add:		output = output + number;	break;
				case subtract:	output = output - number;	break;
				case divide:	output = output / number;	break;
				case multiply:	output = output * number;	break;
			
			}
		
			i += 2;
		
		}

	
	}
	
	return output
	
}
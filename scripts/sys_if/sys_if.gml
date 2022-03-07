function sys_if(line) {
	
	var left = real(line[1]);
	
	for (var i = 2; i < array_length(line); i += 2) {
		
		switch (line[i]) {
			
			case "+":	left = left + line[i + 1];	break;
			case "-":	left = left - line[i + 1];	break;
			case "/":	left = left / line[i + 1];	break;
			case "%":	left = left % line[i + 1];	break;
			case "*":	left = left * line[i + 1];	break;
			
		}
		
		if (line[i] = "=") { break }
		
	}
	
}
function sys_print(line) {
	
	var str = "";
			
	for (var i = 1; i < array_length(line); i ++) {
				
		str += line[i] + " ";
				
	}
			
	log(str);
	
}
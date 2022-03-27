// Searches a directoy and its sub directories

function file_find_in(directory, type) {
	
	var files = 0;
	var file = []
	
	for (
		var fname = file_find_first(directory + "/*.*", fa_directory);
		fname != "";
		fname = file_find_next()
	) {
		
		if (fname = ".") { continue }
		if (fname = "..") { continue }
		
		file[files] = fname;
		files ++
		
	}
	
	file_find_close();
	
	var output = []
	var i = 0;
	repeat (files) {
		
		var fname = file[i];
		var from = directory + "/" + fname;
		
		if (directory_exists(from)) {
			
			var subs = file_find_in(from, type);
			
			array_copy(
				output, 
				array_length(output),
				subs,
				0,
				array_length(subs)
			);
			
		} else {
			
			if (string_last_pos(type, from) = string_length(from) - string_length(type) + 1) { 
				
				array_push(output, from);
				
			}
			
		}
		
		i ++
		
	}
	
	return output;
	
}
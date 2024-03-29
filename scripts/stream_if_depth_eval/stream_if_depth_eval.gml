function stream_if_depth_eval(stream, scope_level) {
	
	var ret = 0;
	
	if (
		stream[0][0] = keyword && 
		(stream[0][1] = IF ||
		stream[0][1] = ELSE ||
		stream[0][1] = END)
	) {
		
		switch (if_depth[scope_level]) {
			
			case 0:		
				
				switch (stream[0][1]) {
					
					case IF:	
						
						var equ = [];
						array_copy(equ, 0, stream, 1, array_length(stream));
						equ = stream_fetch(equ, scope_level);
						//equ = stream_eval(equ, scope_level);
						if (!equ_eval(equ, scope_level)[1]) { ret ++ }
						
					break;
					case ELSE:	ret ++	break;
					
				}
				
			break;
			
			case 1:
				
				if (stream[0][1] = IF) { ret ++ } else { ret -- }
				
			break;
			
			default:
				
				if (stream[0][1] = IF)	{ ret ++ }
				if (stream[0][1] = END)	{ ret -- }
				
			break;
			
		}
		
	}
	
	return ret
	
}
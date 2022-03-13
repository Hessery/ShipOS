function string_comment_lex(str) {
	
	if (string_copy(str, 0, 2) = "//") { return [ comment ] }
	return -1
	
}
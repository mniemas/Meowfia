if(message_done){
	show_debug_message("TextIn: " + string(textIndex))
	show_debug_message("ArrayLen: " + string(array_length(text)))
	if(textIndex >= array_length(text)-1){
		textIndex = 0
		if(room == C0){
			room_goto_next()
		}
	}
	else{
		textIndex++	
	}
	message_char = 0
	message_done = false
	
}
var _text = text[textIndex]
visText = string_copy(_text, 1, message_char)
if(message_char <= string_length(_text)){
	message_done = false
	message_char += textspeed
}
else{
	message_done = true
}
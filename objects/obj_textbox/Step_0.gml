var _text = text[textIndex]
visText = string_copy(_text, 1, message_char)
if(message_char <= string_length(_text)){
	message_done = false
	message_char += textspeed
	if(instance_exists(obj_cat)){
		obj_cat.image_speed = 1.5
	}
}
else{
	message_done = true
	if(instance_exists(obj_cat)){
		obj_cat.image_speed = 0
		obj_cat.image_index = 0
	}
}
var _text = text[textIndex]
visText = string_copy(_text, 1, message_char)
if(message_char <= string_length(_text)){
	if(!audio_is_playing(sfx_text)){
		audio_play_sound(sfx_text,1,true)
	}
	message_done = false
	message_char += textspeed
	if(instance_exists(obj_cat)){
		obj_cat.image_speed = 1.5
	}
}
else{
	message_done = true
	if(audio_is_playing(sfx_text)){
		audio_stop_sound(sfx_text);
	}
	if(instance_exists(obj_cat)){
		obj_cat.image_speed = 0
		obj_cat.image_index = 0
	}
}

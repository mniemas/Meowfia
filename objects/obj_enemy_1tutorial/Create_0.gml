event_inherited()
function attack_up_act(){
	attack_up = true // set attack flag up
	attack = attack + 0.2  // add attack
	obj_enemy.flash = 1
	obj_enemy.flashColor = 0
	audio_play_sound(sfx_buff, 1, false)
}

// push twice to list for increased likeiehood of actions
array_push(unqiue_actions,method(id,attack_up_act))
array_push(unqiue_actions,method(id,attack_up_act))
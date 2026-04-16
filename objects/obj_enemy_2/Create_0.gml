// Inherit the parent event
event_inherited();

function attack_up_act(){
	attack_up = true // set attack flag up
	attack = attack + 0.2  // add attack
}

function def_down_act(){
	obj_player.defense = obj_player.defense - 0.4; // actually effects def
	obj_player.defense_down = true // sets def down flag
}

// push twice to list for increased likeiehood of actions
array_push(unqiue_actions,method(id,def_down_act))
array_push(unqiue_actions,method(id,def_down_act))
array_push(unqiue_actions,method(id,attack_up_act))


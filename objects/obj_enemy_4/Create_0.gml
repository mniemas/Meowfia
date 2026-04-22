// Inherit the parent event
event_inherited();

function attack_down_act(){
	obj_player.flash = 1
	obj_player.attack = obj_player.attack - 0.2; // actually effects def
	obj_player.attack_down = true // sets def up flag
}

function def_down_act(){
	obj_player.flash = 1
	obj_player.defense = obj_player.defense - 0.4; // actually effects def
	obj_player.defense_down = true // sets def down flag
}

// push twice to list for increased likeiehood of actions
array_push(unqiue_actions,method(id,def_down_act))
array_push(unqiue_actions,method(id,def_down_act))
array_push(unqiue_actions,method(id,attack_down_act))
array_push(unqiue_actions,method(id,attack_down_act))
array_push(unqiue_actions,method(id,attack_down_act))

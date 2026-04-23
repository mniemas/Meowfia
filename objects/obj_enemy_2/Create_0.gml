// Inherit the parent event
event_inherited();


function def_down_act(){
	obj_player.defense = obj_player.defense - 0.4; // actually effects def
	obj_player.flash = 1
	obj_player.flashColor = 1
	obj_player.defense_down = true // sets def down flag
}

// push twice to list for increased likeiehood of actions
array_push(unqiue_actions,method(id,def_down_act))
array_push(unqiue_actions,method(id,def_down_act))


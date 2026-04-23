action = function(){ // action that changes per card
	obj_player.attack = obj_player.attack + .2; // actually effects def
	obj_player.attack_up = true // sets def up flag
	obj_player.attack_stacks++
	obj_player.flash = 1
	obj_player.flashColor = 0
	obj_controller.alarm[0] = 10 //check if turn end
}

energy_cost = 3 // cost of card
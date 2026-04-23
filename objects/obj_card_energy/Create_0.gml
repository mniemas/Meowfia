action = function(){ // action that changes per card
	obj_player.energy += 5
	obj_player.flash = 1
	obj_player.flashColor = 0
	obj_controller.alarm[0] = 10 //check if turn end
}

energy_cost = 1 // cost of card
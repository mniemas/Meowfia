action = function(){ // setting defense up
	obj_enemy.attack = obj_player.attack - 0.2; // actually effects def
	obj_enemy.attack_down = true // sets def up flag
	obj_enemy.attack_down_stacks++
	obj_controller.alarm[0] = 10 //check if turn end
}

energy_cost = 2
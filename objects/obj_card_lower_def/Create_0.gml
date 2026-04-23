action = function(){ // setting defense down
	obj_enemy.defense = obj_enemy.defense - 0.4; // actually effects def
	obj_enemy.defense_down = true // sets def down flag
	obj_enemy.defense_down_stacks++
	obj_enemy.flash = 1
	obj_enemy.flashColor = 1
	obj_controller.alarm[0] = 10 //check if turn end
}

energy_cost = 2
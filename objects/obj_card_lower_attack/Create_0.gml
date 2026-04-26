action = function(){ // setting attack up
	obj_enemy.attack = obj_enemy.attack - 0.2; // actually effects def
	obj_enemy.attack_down = true // sets def up flag
	obj_enemy.attack_down_stacks++
	obj_enemy.flash = 1
	obj_enemy.flashColor = 1
	audio_play_sound(sfx_debuff, 1, false)
	obj_controller.alarm[0] = 10 //check if turn end
}

energy_cost = 2
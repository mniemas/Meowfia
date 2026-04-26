action = function(){ // setting defense up
	obj_player.defense = obj_player.defense + .4; // actually effects def
	obj_player.defense_up = true // sets def up flag
	audio_play_sound(sfx_buff, 1, false)
	obj_player.flash = 1
	obj_player.flashColor = 0
	obj_controller.alarm[0] = 10 //check if turn end
}

energy_cost = 2


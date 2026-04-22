action = function(){ // action that changes per card
	var _dmg = max(0,(obj_player.attack * 60) - (obj_player.attack * 100 * obj_enemy.defense))
	
	if(obj_player.played_base_attack){
		_dmg = max(0,(obj_player.attack * 110) - (obj_player.attack * 100 * obj_enemy.defense));
		show_debug_message("working")
	}
	obj_enemy.flash = 1
	obj_enemy.hp = max(0, obj_enemy.hp - _dmg) // enemy health cannot go below 0
	obj_player.alarm[0] = 1; // player attack animation
	obj_controller.alarm[0] = 10 //check if turn endS
}

energy_cost = 2 // cost of card

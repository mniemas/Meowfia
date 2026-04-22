action = function(){ // action that changes per card
	var _dmg = max(0, (obj_player.attack * 100) - (obj_player.attack * 100 * obj_enemy.defense));
	obj_player.played_base_attack = true
	obj_enemy.hp = max(0, obj_enemy.hp - _dmg) // enemy health cannot go below 0
	obj_enemy.flash = 1
	obj_player.alarm[0] = 1; // player attack animation
	obj_controller.alarm[0] = 10 //check if turn end
}

energy_cost = 1 // cost of card

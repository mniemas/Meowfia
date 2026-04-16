// flag resets
if(attack_up){
	attack_up = false
	attack = attack - 0.2
}

if(obj_player.defense_down){ // player attack goes back to normal at start of enemy turn
	obj_player.defense_down = false
	obj_player.defense = obj_player.defense + (0.4)
}

if(obj_player.attack_down){
	obj_player.attack_down = false
	obj_player.attack = obj_player.attack + 0.2
}
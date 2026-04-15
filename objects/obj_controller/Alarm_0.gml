// Routine end checking for player
if (check_for_end()){
	alarm[2] = 60; // exit room
}
else{ // if battle isnt over
	if(check_turn_end()){
		enemy_turn = 1 // players turn is over -> enemy turn
		alarm[1] = 60; // enemy attack will happen
		obj_enemy.alarm[0] = 30; // trigger enemy attack animation
	}

}

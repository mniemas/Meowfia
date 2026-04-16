// Routine end checking for player
if (check_for_end()){
	alarm[2] = 60; // exit room
}
else{ // if battle isnt over
	if(check_turn_end()){
		obj_enemy.alarm[2] = 10; //enemy flag reset
		enemy_turn = 1 // players turn is over -> enemy turn
		alarm[1] = 30; // enemy attack will happen
	}

}

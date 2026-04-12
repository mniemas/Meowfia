obj_enemy.hp -= damage_to_enemy;
if (check_for_end()){
	alarm[2] = 60; // exit room
}
else{ // if battle isnt over
	alarm[1] = 60; // enemy attack will happen
	obj_enemy.alarm[0] = 30; // trigger enemy attack
}

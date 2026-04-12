var _enemy_damage = 1;
obj_player.hp -= _enemy_damage;

enemy_turn = 0; // enemy has attacked, no longer turn

if (check_for_end()){
	alarm[2] = 60;
}
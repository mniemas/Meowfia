enemy_turn = 0; // 1 when enemy turn
damage_to_enemy = 0; // dmg to do to enemy in players turn

player_attack = function(_damage){
	damage_to_enemy = _damage;
	enemy_turn = 1;
	alarm[0] = 40; // let animation play for 40 frames, then attack
}

check_for_end = function (){
	return (obj_enemy.hp <= 0 || obj_player.hp <= 0);
}
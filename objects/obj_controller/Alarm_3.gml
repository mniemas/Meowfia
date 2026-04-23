// enemy attack

var _enemy_damage = max(0,(obj_enemy.attack * 100) - (obj_enemy.attack * 100 * obj_player.defense)) // subtract damage to player by their def
obj_player.hp = max(0, obj_player.hp - _enemy_damage); // player health cannot go below 0
obj_player.flash = 1
obj_player.flashColor = 2
enemy_turn = 0; // enemy has attacked, no longer turn
obj_player.alarm[2] = 30 // transition to player turn: calls players flag resets

if (check_for_end()){ // check for end of battle
	alarm[2] = 60; // if so, after a second, next screen
}

// Inherit the parent event
event_inherited();
function attack_up_act(){
	attack_up = true // set attack flag up
	attack = attack + 0.2  // add attack
}

function attack_second(){
	obj_enemy.alarm[0] = 15; // trigger enemy attack animation
	var _enemy_damage = max(0,(attack * 50) - (attack * 100 * obj_player.defense)) // subtract damage to player by their def
	obj_player.hp = max(0, obj_player.hp - _enemy_damage); // player health cannot go below 0
}

// push twice to list for increased likeiehood of actions
array_push(unqiue_actions,method(id,attack_up_act))
array_push(unqiue_actions,method(id,attack_second))
array_push(unqiue_actions,method(id,attack_second))
array_push(unqiue_actions,method(id,attack_second))


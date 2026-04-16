// alarm for player turn start
// flags reset on player turn
if(defense_up){ // reset def up
	defense_up = false
	defense = defense - .4
}

if(attack_up){
	attack_up = false
	attack = attack - (0.2 * attack_stacks)
	attack_stacks = 0
}

if(played_base_attack){
	played_base_attack = false
}

if(obj_enemy.attack_down){ // enemy attack goes back to normal on player turn
	obj_enemy.attack_down = false
	obj_enemy.attack = obj_enemy.attack + (0.2 * obj_enemy.attack_down_stacks)
	obj_enemy.attack_down_stacks = 0
}

if(obj_enemy.defense_down){ // enemy attack goes back to normal on player turn
	obj_enemy.defense_down = false
	obj_enemy.defense = obj_enemy.defense + (0.4 * obj_enemy.defense_down_stacks)
	obj_enemy.attack_down_stacks = 0
}

energy = energy_total // reset energy


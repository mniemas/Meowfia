enemy_turn = 0; // 1 when enemy turn
damage_to_enemy = 0; // dmg to do to enemy in players turn

audio_play_sound(sfx_ambiance, 1, true)

player_attack = function(){
	alarm[0] = 40; // let animation play for 40 frames, then attack
}

check_turn_end = function(){ // function to check if players turn should end
	energy_out = true // start with true
	
	for( var i = 0; i < array_length(obj_deck.hand); i++) // check if their are any playable cards
	{
		if((obj_player.energy - obj_deck.hand[i].energy_cost) >= 0){
			// playable card found - player has enough energy - they are not out of energy
			energy_out = false
		}	
	}


	show_debug_message($"Energy out: { obj_player.energy <= 0}")
	show_debug_message($"No cards left: {!(instance_exists(obj_card))}")
	show_debug_message($"No cards playable: {energy_out}")
	return ( obj_player.energy <= 0 || !(instance_exists(obj_card)) || energy_out)
	// if player has no energy, or has played all their cards, turn ends
}

check_for_end = function (){ // check for battle ends
	return (obj_enemy.hp <= 0 || obj_player.hp <= 0); // ends if player or enemy is dead
}

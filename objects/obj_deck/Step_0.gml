hand = array_filter(hand, function(ins) {
	return instance_exists(ins);
}) // remove cards that have been destroyed from hand

if(obj_controller.enemy_turn && instance_exists(obj_card)){ // if it is enemy turn and cards exist
	while( instance_exists(obj_card) ){
		instance_destroy(obj_card) // destroy cards
	}
	hand = [] // clear hand
	
}

if(!(obj_controller.enemy_turn) && !(instance_exists(obj_card))){ // on players turn, when no cards exist
	hand[0] = instance_create_depth(44, 480, -1000, obj_card_base_attack) // create basic attck and def cards
	hand[1] = instance_create_depth(290, 480, -1000, obj_card_base_defense)
	
	// Random cards created from cards array
	// x coords are specific pos in rooms - can be changed later
	hand[2] = instance_create_depth(644, 480, -1000, cards[irandom(array_length(cards)-1)])
	hand[3] = instance_create_depth(899, 480, -1000, cards[irandom(array_length(cards)-1)])
	hand[4] = instance_create_depth(1157, 480, -1000, cards[irandom(array_length(cards)-1)])
	
}
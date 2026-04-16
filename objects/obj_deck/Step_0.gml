if( room == B1Tutorial or room == B2 or room == B3 or room == B4 or room == B5){
hand = array_filter(hand, function(ins) {
	return instance_exists(ins);
}) // remove cards that have been destroyed from hand

if(obj_controller.enemy_turn && instance_exists(obj_card)){ // if it is enemy turn and cards exist
	for(var i = 0; i < array_length(hand); i++){ // moves hand off screen
		if(hand[i].y < room_height){
			hand[i].y += 20;
		}
		if(hand[i].y >= room_height){
			instance_destroy(hand[i]) // destroys if off screen
		}
	}
	//hand = [] // clear hand
	
}

/*
if(!(obj_controller.enemy_turn) && !(instance_exists(obj_card))){ // on players turn, when no cards exist
	hand[0] = instance_create_depth(44, 1000, -1000, obj_card_base_attack) // create basic attck and def cards
	hand[1] = instance_create_depth(290, 1000, -1000, obj_card_base_defense)
	
	// Random cards created from cards array
	// x coords are specific pos in rooms - can be changed later
	// created below room so they can move up
	if( array_length(cards) >= 1){
	hand[2] = instance_create_depth(644, 1000, -1000, cards[irandom(array_length(cards)-1)])
	hand[3] = instance_create_depth(899, 1000, -1000, cards[irandom(array_length(cards)-1)])
	hand[4] = instance_create_depth(1157, 1000, -1000, cards[irandom(array_length(cards)-1)])
	}
}
*/

if(array_length(hand) > 0){
if(!(obj_controller.enemy_turn) && hand[0].y >= 470){ // moves hand up
	for(var i = 0; i < array_length(hand); i++){
		if(hand[i].y >= 470){
			hand[i].y -=  20;
		}
	}
}
}
}
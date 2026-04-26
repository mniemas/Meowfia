audio_play_sound(sfx_card, 1, false)
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
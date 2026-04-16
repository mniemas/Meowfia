enemy_turn = 0
obj_deck.hand = []
if(room == B5){
	room_goto(End);
	instance_destroy(obj_deck)
	instance_destroy(obj_controller)
}
else{
	room_goto_next()
}
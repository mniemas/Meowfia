if(enemy_turn = 0)
{
	enemy_turn = 0
	obj_deck.hand = []
	if(room == Gameover or room == Win){
		room_goto(Title);
		instance_destroy(obj_deck)
		instance_destroy(obj_controller)
	}
	else{
		room_goto_next()
	}
}
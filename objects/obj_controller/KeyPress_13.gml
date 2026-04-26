if(enemy_turn = 0)
{
	enemy_turn = 0
	obj_deck.hand = []
	if(room == Gameover or room == Win){
		game_restart()
	}
	else{
		room_goto_next()
	}
}
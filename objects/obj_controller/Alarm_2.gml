// Battle over
enemy_turn = 0
obj_deck.hand = []
if(obj_player.hp <= 0){
	room_goto(Gameover)
}
else{
	if(room == B5){
		room_goto(Win);
	}
	else{
		room_goto_next()
	}
}
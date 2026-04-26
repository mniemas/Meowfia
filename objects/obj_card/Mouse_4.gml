if (obj_controller.enemy_turn) exit; // cannot act on enemy turn or if cannot afford
if(obj_player.energy - energy_cost < 0 ){
	show_debug_message("not enough energy") // want this to show to player, cannot draw from step event directly
	// maybe a seperate obj?
	exit
}
action(); // perform action def in create
audio_play_sound(sfx_card, 1, false)
obj_player.energy = obj_player.energy - energy_cost // take energy from player
instance_destroy()
/*)
show_debug_message($"{room_width/2}")
move_towards_point(room_width/2-(sprite_width/2), (room_height/2)-(sprite_height/2), 30)
//alarm[1] = 1
alarm[0] = 20


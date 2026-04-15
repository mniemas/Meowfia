if (obj_controller.enemy_turn) exit; // cannot act on enemy turn or if cannot afford
if(obj_player.energy - energy_cost < 0 ){
	show_debug_message("not enough energy") // want this to show to player, cannot draw from step event directly
	// maybe a seperate obj?
	exit
}
action(); // perform action def in create
obj_player.energy = obj_player.energy - energy_cost // take energy from player
instance_destroy() // destroy card

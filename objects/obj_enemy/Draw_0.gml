draw_self();
var message = $"{ceil(hp)}/{hp_total}"
draw_text(x +3, y - 2, message); // display hp

if (attack_up){ // if attack flag is up
	draw_text(x+3, y - 20, "Attack Up!") // display atk is up
}

if (attack_down){ // if attack flag is up
	draw_text(x+3, y - 40, "Attack Down!") // display atk is up
}

if (defense_down){ // if attack flag is up
	draw_text(x+3, y + 20, "Defense Down!") // display atk is up
}

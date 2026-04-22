draw_self();
var message = $"{ceil(hp)}/{hp_total}"
draw_text(x +3, y - 2, message); // display hp

var message3 = $"Attack: {attack}" // display attack
draw_text(x +3, y + 20, message3);

var message4 = $"Defense: {defense}" // display defense
draw_text(x +3, y + 40, message4);

if (attack_up){ // if attack flag is up
	draw_text(x+3, y - 20, "Attack Up!") // display atk is up
}

if (attack_down){ // if attack flag is up
	draw_text(x+103, y - 20,$"Attack Down! x{attack_down_stacks}") // display atk is up
}

if (defense_down){ // if attack flag is up
	draw_text(x+103, y - 40, $"Defense Down! x{defense_down_stacks}") // display atk is up
}

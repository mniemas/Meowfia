draw_self();
if (flash >0){
	flash -= 0.05
	shader_set(shd_flash)
	shd_alpha = shader_get_uniform(shd_flash, "_alpha")
	shader_set_uniform_f(shd_alpha, flash)
	draw_self();
	draw_set_font(-1)
shader_reset()
}

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

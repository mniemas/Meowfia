draw_self();
draw_set_font(-1)
if (flash >0){
	flash -= 0.05
	shader_set(shd_flash)
	shd_r = shader_get_uniform(shd_flash, "_red")
	shd_g = shader_get_uniform(shd_flash, "_green")
	shd_b = shader_get_uniform(shd_flash,"_blue")
	show_debug_message($"Player: {flashColor}")
	if(flashColor == 0){
		r = 0
		g = 0
		b = 0
		
	}
	else if(flashColor == 1){
		r = 211
		g = 211
		b = 211
	}
	else{
		r = 255
		g = 255
		b = 255
	}
	shd_alpha = shader_get_uniform(shd_flash, "_alpha")
	shader_set_uniform_f(shd_alpha, flash)
	shader_set_uniform_f(shd_r, r)
	shader_set_uniform_f(shd_g, g)
	shader_set_uniform_f(shd_b, b)
	draw_self();
	draw_set_font(-1)
shader_reset()
}
	



var message = $"{ceil(hp)}/{hp_total}" // display hp
draw_text(x +3, y - 2, message);

var message2 = $"{ceil(energy)}/{energy_total}" // display energy
draw_text(x +3, y + 10, message2);

var message3 = $"Attack: {attack}" // display attack
draw_text(x +3, y + 190, message3);

var message4 = $"Defense: {defense}" // display defense
draw_text(x +3, y + 210, message4);

if(defense_up) // if defense flag is up
{
	draw_text(x+3, y - 20, "Defense Up!") // display def is up
}

if(defense_down) // if defense flag is up
{
	draw_text(x+103, y - 20, "Defense Down!") // display def is up
}

if (attack_up){ // if attack flag is up
	draw_text(x+3, y - 40, $"Attack Up! x{attack_stacks}") // display atk is up
}

if(attack_down){
	draw_text(x+103, y - 40, "Attack Down!") // display atk is up
}


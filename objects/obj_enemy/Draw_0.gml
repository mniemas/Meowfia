draw_self();
if (flash >0){
	flash -= 0.05
	show_debug_message($"Enemy: {flashColor}")
	shader_set(shd_flash)
	shd_r = shader_get_uniform(shd_flash, "_red")
	shd_g = shader_get_uniform(shd_flash, "_green")
	shd_b = shader_get_uniform(shd_flash,"_blue")
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
		r = 255 / 255
		g = 255 / 255
		b = 255 / 255
		
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

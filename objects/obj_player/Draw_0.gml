draw_self();
var message = $"{ceil(hp)}/{hp_total}" // display hp
draw_text(x +3, y - 2, message);

var message2 = $"{ceil(energy)}/{energy_total}" // display energy
draw_text(x +3, y + 10, message2);

var message3 = $"Attack: {attack}" // display attack
draw_text(x +3, y + 60, message3);

var message4 = $"Defense: {defense}" // display defense
draw_text(x +3, y + 80, message4);

if(defense_up) // if defense flag is up
{
	draw_text(x+3, y - 20, "Defense Up!") // display def is up
}

if(defense_down) // if defense flag is up
{
	draw_text(x+3, y + 20, "Defense Down!") // display def is up
}

if (attack_up){ // if attack flag is up
	draw_text(x+3, y - 40, $"Attack Up! x{attack_stacks}") // display atk is up
}

if(attack_down){
	draw_text(x+3, y + 40, "Attack Down!") // display atk is up
}


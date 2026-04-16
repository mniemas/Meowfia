// Enemy action
time = 80
var _ran = irandom(array_length(obj_enemy.unqiue_actions)-1) // select random action
obj_enemy.unqiue_actions[_ran]() // perform random action

obj_enemy.alarm[0] = 40; // trigger enemy attack animation
alarm[3] = time // call enemy attack


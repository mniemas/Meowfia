// attack animation
y -= 20; // same as enemy
if (y < ystart - 80){
	alarm[1] = 1; // move back to orignal pos
}
else{
	alarm[0] = 1; // keep moving 
}
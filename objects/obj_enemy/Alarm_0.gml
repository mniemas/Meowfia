// Moving sprite up as part of attack animation

y -= 20; 
if (y < ystart - 80){ // if sprite below greatest height
	alarm[1] = 1; // move back to orignal pos
}
else{
	alarm[0] = 1; // keep moving 
}

///Player variables	
spd = 8;
image_speed = 0;

enum states
{
idle,
move,
attack,
throw,
dash
}

current_state = states.idle;
fireRate = 15;
fire = true;
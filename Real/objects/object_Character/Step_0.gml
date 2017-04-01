/// Movemnet

var hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var ver = keyboard_check(vk_down) - keyboard_check(vk_up);
var mag = max(1,point_distance(0,0,hor,ver));
x += spd * ( hor / mag );
y += spd * ( ver / mag );

// W,A,S,D
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);


if current_state == states.idle{
	if ver == 0 && hor == 0 {
	image_index = 0;
	image_speed = 0;
	}
	if mouse_check_button(mb_left){
	current_state = states.attack;
	}
	
}


if  mouse_check_button(mb_right)&& fire == true{
	instance_create_layer(x, y, "Instances_1", objAxe);
	alarm[0] = fireRate
	fire = false
	}

if ver == -1 && hor == 0 {
sprite_index = sprite_characterUp
image_speed = 2;
}

if ver == -1 && hor == 1 {
sprite_index = sprite_characterUpRight
image_speed = 2;
}

if ver == 0 && hor == 1 {
sprite_index = sprite_characterRight
image_speed = 2;
}

if ver == 1 && hor == 1 {
sprite_index = sprite_characterDownRight
image_speed = 2;
}

if ver == 1 && hor == 0 {
sprite_index = sprite_characterDown
image_speed = 2;
}

if ver == 1 && hor == -1 {
sprite_index = sprite_characterDownLeft
image_speed = 2;
}

if ver == 0 && hor == -1 {
sprite_index = sprite_characterLeft
image_speed = 2;
}

if ver == -1 && hor == -1 {
sprite_index = sprite_characterUpLeft
image_speed = 2;
}


if current_state == states.attack{
    var rel_y = y - mouse_y
    var rel_x = mouse_x - x
    
    spd = 0.3;
    image_speed = 2;
    if image_index >= 4 {
        current_state = states.idle;
        spd = 8;
    }

    if rel_y > 2 * rel_x {
        if rel_y > rel_x / -2 {
            if rel_y > -2 * rel_x {
                sprite_index = sprite_characterAttackUp
            } else {
                sprite_index = sprite_characterAttackUpLeft
            }
        } else {
            if rel_y > rel_x / 2 {
                sprite_index = sprite_characterAttackLeft
            } else {
                sprite_index = sprite_characterAttackDownLeft
            }
        }
    } else {
        if rel_y < rel_x / -2 {
            if rel_y < -2 * rel_x {
                sprite_index = sprite_characterAttackDown
            } else {
                sprite_index = sprite_characterAttackDownRight
            }
        } else {
            if rel_y < rel_x / 2 {
                sprite_index = sprite_characterAttackRight
            } else {
                sprite_index = sprite_characterAttackUpRight
            }
        }
    }
}

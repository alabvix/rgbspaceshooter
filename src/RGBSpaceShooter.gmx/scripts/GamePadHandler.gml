var v = argument[0]
var fire_cost = 1;

var btn_red = gamepad_button_check_pressed(global.GAME_PAD_1, gp_face2);
var btn_green = gamepad_button_check_pressed(global.GAME_PAD_1, gp_face1);
var btn_blue = gamepad_button_check_pressed(global.GAME_PAD_1, gp_face3);
var btn_rgb = gamepad_button_check_pressed(global.GAME_PAD_1, gp_face4);


// Ship moviment on X axis
var h_axis = gamepad_axis_value(global.GAME_PAD_1, gp_axislh);
var px = xprevious;
if ( h_axis > 0) {
    show_debug_message("H Axis:" + string(h_axis) + " moving to right")
    px += v;
} else if ( h_axis < 0 ) {
    px -= v;
    show_debug_message("H Axis:" + string(h_axis) + " moving to leftt")
}
if (px > 0 && px <= room_width) {
    x = px;
}

// Calculate the first and the last value of x to prevent the ship goes offscreen.
x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2);

// Ship movimento on Y axis.
var v_axis = gamepad_axis_value(global.GAME_PAD_1, gp_axislv);
var py = yprevious;
if (v_axis < 0) {
    py -= v;
} else if (v_axis > 0) {
    py += v;
}
if (py > 0 && py <= room_height) y = py;

// Calculate the first and the last value of y to prevent the ship goes offscreen.
y = clamp(y, 0 + sprite_height/2, room_height - sprite_height/2);

// Held down red fire key
if gamepad_button_check(global.GAME_PAD_1, gp_face2) {
    show_debug_message("Key A held down")
    _fire_red_held_down ++
    if (_fire_red_held_down > 20 && global.player_red_energy > 0) {
        instance_create(x-25, y + irandom_range(1,5), obj_red_fire_concetrate)
        instance_create(x+25, y + irandom_range(1,5), obj_red_fire_concetrate)
        global.player_red_energy -= 2
        if (global.player_red_energy < 0) global.player_red_energy = 0   
        exit
    } 
} else {
    _fire_red_held_down = 0
}

// Held down blue fire key
if gamepad_button_check(global.GAME_PAD_1, gp_face3) {
    show_debug_message("button X held down")
    _fire_blue_held_down ++
    if (_fire_blue_held_down > 20 && global.player_blue_energy > 0) {
        instance_create(x-25, y + irandom_range(1,5), obj_blue_fire_concetrate)
        instance_create(x+25, y + irandom_range(1,5), obj_blue_fire_concetrate)
        global.player_blue_energy -= 2
        if (global.player_blue_energy < 0) global.player_blue_energy = 0
        exit
    }
} else {
    _fire_blue_held_down = 0
}

// Held down green fire key
if gamepad_button_check(global.GAME_PAD_1, gp_face1) {
    show_debug_message("Key S held down")
    _fire_green_held_down ++
    if (_fire_green_held_down > 20 && global.player_green_energy > 0) {
        instance_create(x-25, y + irandom_range(1,5), obj_green_fire_concetrate)
        instance_create(x+25, y + irandom_range(1,5), obj_green_fire_concetrate)
        global.player_green_energy -= 2
        if (global.player_green_energy < 0) global.player_green_energy = 0
        exit
    }
} else {
    _fire_green_held_down = 0
}

// Fire
if (btn_red && global.player_red_energy > 0) {
    if (global.player_weapon == global.PLAYER_SINGLE_LASER ||
     global.player_weapon == global.PLAYER_PURSUIT_LASER) {
        instance_create(x, y - 60, obj_red_laser)
    }
    if (global.player_weapon == global.PLAYER_DOUBLE_LASER) {
        instance_create(x-25, y + irandom_range(1,5), obj_red_laser)
        instance_create(x+25, y + irandom_range(1,5), obj_red_laser)
        fire_cost = 2
    }
    if (global.player_weapon == global.PLAYER_TRI_LASER) {
        instance_create(x, y - 60, obj_red_laser)
        ml = instance_create(x-45, y + 15, obj_red_laser)
        mr = instance_create(x+45, y + 15, obj_red_laser)
        ml._move_left = true
        mr._move_right = true
        fire_cost = 3
    }
    if (global.player_weapon == global.PLAYER_PURSUIT_LASER) {
        fire_cost = 4
    }
    global.player_red_energy -= fire_cost;
    if (global.player_red_energy < 0) {
        global.player_red_energy = 0
    }
    PlayShipLaser();
}

if (btn_green && global.player_green_energy > 0) {
    if (global.player_weapon == global.PLAYER_SINGLE_LASER ||
     global.player_weapon == global.PLAYER_PURSUIT_LASER) {
        instance_create(x, y - 60, obj_green_laser)
    }
    if (global.player_weapon == global.PLAYER_DOUBLE_LASER) {
        instance_create(x-25, y + irandom_range(1,5), obj_green_laser)
        instance_create(x+25, y + irandom_range(1,5), obj_green_laser)
        fire_cost = 2
    }
    if (global.player_weapon == global.PLAYER_TRI_LASER) {
        instance_create(x, y - 60, obj_green_laser)
        ml = instance_create(x-45, y + 15, obj_green_laser)
        mr = instance_create(x+45, y + 15, obj_green_laser)
        ml._move_left = true
        mr._move_right = true
        fire_cost = 3
    }
    if (global.player_weapon == global.PLAYER_PURSUIT_LASER) {
        fire_cost = 4
    }
    global.player_green_energy -= fire_cost;
    if (global.player_green_energy < 0) {
        global.player_green_energy = 0
    }
    PlayShipLaser();
}
if (btn_blue && global.player_blue_energy > 0) {
    if (global.player_weapon == global.PLAYER_SINGLE_LASER ||
     global.player_weapon == global.PLAYER_PURSUIT_LASER) {
        instance_create(x, y - 60, obj_blue_laser)
    }
    if (global.player_weapon == global.PLAYER_DOUBLE_LASER) {
        instance_create(x-25, y + irandom_range(1,5), obj_blue_laser)
        instance_create(x+25, y + irandom_range(1,5), obj_blue_laser)
        fire_cost = 2
    }
    if (global.player_weapon == global.PLAYER_TRI_LASER) {
        instance_create(x, y - 60, obj_blue_laser)
        ml = instance_create(x-45, y + 15, obj_blue_laser)
        mr = instance_create(x+45, y + 15, obj_blue_laser)
        ml._move_left = true
        mr._move_right = true
        fire_cost = 3
    }
    if (global.player_weapon == global.PLAYER_PURSUIT_LASER) {
        fire_cost = 4
    }
    global.player_blue_energy -= fire_cost;
    if (global.player_blue_energy < 0) {
        global.player_blue_energy = 0
    }
    PlayShipLaser();
}

// Special weapon fired
if (btn_rgb && global.player_rgb_energy > 0) {
    switch (global.player_weapon_special) {
        case global.SPECIAL_WEAPON_1:
            var weapon = instance_create(x,y-20, obj_special_weapon_1_fire)
            global.player_rgb_energy = global.player_rgb_energy - weapon._cost
            if (global.player_rgb_energy <=0) {
                global.player_rgb_energy = 0
            }
            PlaySpecialWeapon()
    }        
}

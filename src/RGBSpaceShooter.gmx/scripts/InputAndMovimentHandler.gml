var v = argument[0]
var fire_cost = 1;

// Key input processing.
key_right = keyboard_check(vk_right)
key_left  = keyboard_check(vk_left)
key_up    = keyboard_check(vk_up)
key_down  = keyboard_check(vk_down)

var btn_red = gamepad_button_check_pressed(global.GAME_PAD_1, gp_face2);
var btn_green = gamepad_button_check_pressed(global.GAME_PAD_1, gp_face1);
var btn_blue = gamepad_button_check_pressed(global.GAME_PAD_1, gp_face3);
var btn_rgb = gamepad_button_check_pressed(global.GAME_PAD_1, gp_face4);

// Moviment of ship on x axis.
var px = xprevious;
if (key_right ) {
    px += v;
} else if (key_left ) {
    px -= v;
}

// Gamepad Ship moviment on X axis
var h_axis = gamepad_axis_value(global.GAME_PAD_1, gp_axislh);
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

var l_room_width = room_width
var start_clamp = 0
if (global.PLAYER_INSIDE_BIG_SHIP) {
    l_room_width = room_width - 328
    start_clamp = 306
}

// Calculate the first and the last value of x to prevent the ship goes offscreen.
x = clamp(x, start_clamp + sprite_width/2, l_room_width - sprite_width/2);

// Moviment of ship on y axis.
var py = yprevious;
if (key_up) {
    py -= v;
} else if (key_down) {
    py += v;
}
if (py > 0 && py <= room_height) y = py;

// Calculate the first and the last value of y to prevent the ship goes offscreen.
y = clamp(y, 0 + sprite_height/2, room_height - sprite_height/2);

key_fire_red     = keyboard_check_pressed(ord('A'))
key_fire_green   = keyboard_check_pressed(ord('S'))
key_fire_blue    = keyboard_check_pressed(ord('D'))
key_fire_special = keyboard_check_pressed(ord('F'))

// exit condition: all keys pressed
if (
        (key_fire_red && key_fire_green && key_fire_blue)
        || (key_fire_red && key_fire_green) 
        || (key_fire_red && key_fire_blue)
        || (key_fire_green && key_fire_blue)
       ) { exit } 

// Held down red fire key
if keyboard_check(ord('A')) || 
    gamepad_button_check(global.GAME_PAD_1, gp_face2) {
    //show_debug_message("Key A held down")
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
if keyboard_check(ord('D')) ||
   gamepad_button_check(global.GAME_PAD_1, gp_face3) {
    //show_debug_message("Key D held down")
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
if  keyboard_check(ord('S')) ||
    gamepad_button_check(global.GAME_PAD_1, gp_face1) {
    //show_debug_message("Key S held down")
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
var fire_cost = 1;
if (key_fire_red || btn_red) {
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
if (key_fire_green || btn_green) {
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
if (key_fire_blue || btn_blue) {
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
if ((key_fire_special || btn_rgb) 
    && global.player_rgb_energy > 0 ) {
    var weapon = instance_create(x,y-20, obj_special_weapon_1_fire)
    global.player_rgb_energy = global.player_rgb_energy - weapon._cost
    if (global.player_rgb_energy <=0) {
        global.player_rgb_energy = 0
    }
    PlaySpecialWeapon()
}




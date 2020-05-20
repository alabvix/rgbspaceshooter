_counter_create_ammo += 1 
if (round(_counter_create_ammo) == 400) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-10, -20)
    
    if (global.player_red_energy == 0) {
        item = global.ITEM_RED_AMMO
    } else if (global.player_green_energy == 0) {
        item = global.ITEM_GREEN_AMMO
    } else if (global.player_blue_energy == 0) {
        item = global.ITEM_BLUE_AMMO
    } else {
        item = irandom_range(1,3)
    }
    
    LiberateIten(item,vx,vy)
    _counter_create_ammo = 0
}


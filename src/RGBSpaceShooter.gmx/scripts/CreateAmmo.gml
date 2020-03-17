_counter_create_ammo += 1 
if (round(_counter_create_ammo) == 400) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-10, -20)
    item = irandom_range(1,3)
    LiberateIten(item,vx,vy)
    _counter_create_ammo = 0
}


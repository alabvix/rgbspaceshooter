
global.count_bkg_ship_1 ++
if (global.count_bkg_ship_1 == global.TOTAL_BKG_SHIP_1_LIMIT) {
    var mx = irandom_range(0, room_width - 64)
    var my = irandom_range(-64, -256)
    instance_create(mx, my, obj_bkg_ship_1)
    global.count_bkg_ship_1 = 0
}


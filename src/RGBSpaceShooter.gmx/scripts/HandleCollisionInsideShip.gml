var barrier = instance_place(x, y, obj_barrier_1) 
if (barrier != noone) {
    global.player_hull = 0
    SetShipExplosion()
}

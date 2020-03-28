var bx = irandom_range(64, room_width - 64)
var by = irandom_range(-64, -364)

instance_create(bx, by, obj_aurora_building_1) 

/*
for (var i=0; i < 40; i++) {
    instance_create(bx, by, obj_aurora_building_1)    
    bx = irandom_range(64, room_width - 64)
    by = irandom_range(-64, -464)
    if (instance_place(bx, by, obj_aurora_building_1)) {
        bx = irandom_range(64, room_width - 64)
        by = irandom_range(-64, -464)
    }
}   
*/


var centro_room_x = room_width/2;
var centro_room_y = room_height/2;

switch (global.selected_planet){
    case global.PLANET_AURORA_SPACE:
        var subboss = instance_create(centro_room_x, -100, obj_sub_boss_1)
        instance_create(subboss.x, subboss.y, obj_boss_force_field)
        break
    case global.PLANET_AURORA_LAND:
        break     
}

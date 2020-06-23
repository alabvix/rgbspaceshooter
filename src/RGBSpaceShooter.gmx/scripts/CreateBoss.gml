
var centro_room_x = room_width/2;
var centro_room_y = room_height/2;

switch (global.selected_planet){
    case global.PLANET_AURORA_SPACE:
        var subboss = instance_create(centro_room_x, -100, obj_sub_boss_1)
        instance_create(subboss.x, subboss.y, obj_boss_force_field)
        break
    case global.PLANET_AURORA_LAND:
        var boss = instance_create(centro_room_x, -100, obj_boss_1)
        break     
   case global.PLANET_SPACE_LAB:
        var boss = instance_create(centro_room_x, -100, obj_sub_boss_space_lab)
        break     
  case global.PLANET_SPACE_LAB_LAND:
        var boss = instance_create(centro_room_x, centro_room_y -100, obj_boss_space_lab_p1)
        //room.background_vspeed[0] = 0;
        break          
}

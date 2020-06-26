
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
        var p1 = instance_create(centro_room_x-250, centro_room_y-50, obj_boss_space_lab_p2)
        instance_create(p1.x, p1.y, obj_enemy_antenna)
        var board = instance_create(centro_room_x, centro_room_y -100, obj_boss_space_lab_p1)
        
        var boss = instance_create(board.x, board.y - 40, obj_boss_space_lab_mastermind)
        var p2 = instance_create(centro_room_x+250, centro_room_y-50, obj_boss_space_lab_p2)
        instance_create(p2.x, p2.y, obj_enemy_antenna)
        
        var e1 = instance_create(p1.x + 150, p1.y, obj_moving_engine_left)
        var e2 = instance_create(p2.x - 150, p2.y, obj_moving_engine_right)
        
        //room.background_vspeed[0] = 0;
        break          
}

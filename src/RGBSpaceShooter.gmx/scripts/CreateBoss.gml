
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
        var parts_y = centro_room_y - 600
        var board_y = centro_room_y - 600
  
        var p1 = instance_create(centro_room_x-250, parts_y, obj_boss_space_lab_p2)

        var board = instance_create(centro_room_x, board_y, obj_boss_space_lab_p1)
        
        var boss = instance_create(board.x, board.y - 40, obj_boss_space_lab_mastermind)
        var p2 = instance_create(centro_room_x+250, parts_y, obj_boss_space_lab_p2)
        
        instance_create(p1.x, p1.y, obj_enemy_antenna)
        instance_create(p2.x, p2.y, obj_enemy_antenna)
        
        var e1 = instance_create(p1.x + 150, p1.y, obj_moving_engine_left)
        var e2 = instance_create(p2.x - 150, p2.y, obj_moving_engine_right)
        
        //room.background_vspeed[0] = 0;
        break          
    case global.PLANET_MIRANDHA_SPACE:
        var p1 = instance_create(0,0, obj_mirandha_sub_boss)
        break
    case global.PLANET_MIRANDHA_LAND:            
        var p1 = instance_create(centro_room_x, 192, obj_boss_metal_head)
        break
    case global.PLANET_NEDOMIA_V_SPACE:
        var p1 = instance_create(0, 0, obj_sub_boss_nedonia_space_a)
        var p2 = instance_create(0, 0, obj_sub_boss_nedonia_space_b)
        break
    case global.PLANET_NEDOMIA_V_LAND:
        var head = instance_create(centro_room_x, 0, obj_boss_centoped_head);
        var body = instance_create(0, head - 40, obj_boss_centoped_body);
        var tail = instance_create(0, body - 40, obj_boss_centoped_tail);
        
        
    
    
        break
                
}

// Liberates an iten when enemy was destroyed
// argument[0] = iten type:
//        1 = red ammo
//        2 = green ammo
//        3 = blue ammo
//        4 = Main Weapon Upgrade
// argument[1] = x
// argument[2] = y

item  = argument[0]
vx    = argument[1]
vy    = argument[2]

switch (item) {
   case global.ITEM_RED_AMMO:
        instance_create(vx, vy, obj_item_red_ammo)
        break;
   case global.ITEM_GREEN_AMMO:
        instance_create(vx, vy, obj_item_green_ammo)
        break;    
   case global.ITEM_BLUE_AMMO:
        instance_create(vx, vy, obj_item_blue_ammo)
        break;            
   case global.ITEM_SINGLE_LASER:
        instance_create(vx, vy, obj_item_single_laser)
        break;
   case global.ITEM_DOUBLE_LASER:
        instance_create(vx, vy, obj_item_double_laser)
        break;                        
   case global.ITEM_TRI_LASER:
        instance_create(vx, vy, obj_item_tri_laser)
        break;                                
             
}


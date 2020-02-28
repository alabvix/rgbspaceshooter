// Liberates an iten when enemy was destroyed
// argument[0] = 1,2,3 = red, green, blue
// argument[1] = x
// argument[2] = y

color = argument[0]
vx    = argument[1]
vy    = argument[2]

switch (color) {
    case global.RED:
        instance_create(vx, vy, obj_red_laser_refil)
        break;
   case global.GREEN:
        instance_create(vx, vy, obj_green_laser_refil)
        break;    
   case global.BLUE:
        instance_create(vx, vy, obj_blue_laser_refil)
        break;            
}


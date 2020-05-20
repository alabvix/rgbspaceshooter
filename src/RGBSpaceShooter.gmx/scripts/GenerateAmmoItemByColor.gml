var vx = argument[0]
var vy = argument[1]
var color = argument[2]

var i = irandom_range(1,6)
if (i == 3) {
    switch (color) {
        case global.RED:
            instance_create(vx, vy, obj_item_red_ammo)
            break
        case global.GREEN:
            instance_create(vx, vy, obj_item_green_ammo)
            break
       case global.BLUE:
            instance_create(vx, vy, obj_item_blue_ammo)
            break
    }
}

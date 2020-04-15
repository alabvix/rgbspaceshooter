var vx = argument[0]
var vy = argument[1]

var i = irandom_range(1,6)
if (i == 2 || i == 5) {
    instance_create(vx, vy, obj_rgb_energy)
}

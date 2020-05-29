var lenght = argument[0]
var start_x = argument[1]
var start_y = argument[2]

for (var i=0; i<lenght; i++) {
    instance_create(start_x, start_y, obj_atomic_blaster)
    start_y += 64
}

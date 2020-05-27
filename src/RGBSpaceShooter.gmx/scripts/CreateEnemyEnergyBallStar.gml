for (i=0; i < global.dir_array_lenght; i++) {
    sphere = instance_create(x, y, obj_enemy_weapon_3)
    sphere.speed = 7
    sphere.direction = global.dir_array[i]
}

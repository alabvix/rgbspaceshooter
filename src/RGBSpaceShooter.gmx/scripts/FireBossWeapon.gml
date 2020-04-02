var boss_name = argument[0]
var weapon    = argument[1]

switch(boss_name) {
    case global.BOSS_1_NAME:
        if (weapon == global.WEAPON_BIO_BALL) {
            for (i=0; i < global.dir_array_lenght; i++) {
                bio_shot = instance_create(x, y, obj_enemy_weapon_4)
                bio_shot.speed = 7
                bio_shot.direction = global.dir_array[i]
                PlayBossFireShot(boss_name, global.WEAPON_BIO_BALL)
            }
        }
        if (weapon == global.WEAPON_BIO_VERM) {
            wy = y + irandom_range(-5, 5)
            instance_create(x, wy, obj_enemy_weapon_5)
            PlayBossFireShot(boss_name, global.WEAPON_BIO_VERM)
        }
        break;      
}


var weapon = argument[0]

ini_open(global.FILE_GAME_SETTINGS)

switch (weapon) {
    case global.SPECIAL_WEAPON_1:
        ini_write_real("special-weapon", "weapon-1", 1);
        break
    case global.SPECIAL_WEAPON_2:
        ini_write_real("special-weapon", "weapon-2", 1);
        break
    case global.SPECIAL_WEAPON_3:
        ini_write_real("special-weapon", "weapon-3", 1);
        break                
    case global.SPECIAL_WEAPON_4:
        ini_write_real("special-weapon", "weapon-4", 1);
        break
    case global.SPECIAL_WEAPON_5:
        ini_write_real("special-weapon", "weapon-5", 1);
        break
    case global.SPECIAL_WEAPON_6:
        ini_write_real("special-weapon", "weapon-6", 1);
        break
    case global.SPECIAL_WEAPON_7:
        ini_write_real("special-weapon", "weapon-7", 1);
        break                                
    case global.SPECIAL_WEAPON_8:
        ini_write_real("special-weapon", "weapon-8", 1);
        break                                        
}

ini_close()

var weapon = argument[0]
var has_weapon = 0

ini_open(global.FILE_GAME_SETTINGS)

switch (weapon) {
    case global.SPECIAL_WEAPON_1:
        has_weapon = ini_read_real("special-weapon", "weapon-1", 0);
        break
    case global.SPECIAL_WEAPON_2:
        has_weapon = ini_read_real("special-weapon", "weapon-2", 0);
        break
    case global.SPECIAL_WEAPON_3:
        has_weapon = ini_read_real("special-weapon", "weapon-3", 0);
        break                
    case global.SPECIAL_WEAPON_4:
        has_weapon = ini_read_real("special-weapon", "weapon-4", 0);
        break
    case global.SPECIAL_WEAPON_5:
        has_weapon = ini_write_real("special-weapon", "weapon-5", 0);
        break
    case global.SPECIAL_WEAPON_6:
        has_weapon = ini_read_real("special-weapon", "weapon-6", 0);
        break
    case global.SPECIAL_WEAPON_7:
        has_weapon = ini_read_real("special-weapon", "weapon-7", 0);
        break                                
    case global.SPECIAL_WEAPON_8:
        has_weapon =ini_read_real("special-weapon", "weapon-8", 0);
        break                                        
}

ini_close()

return has_weapon

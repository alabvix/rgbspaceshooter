var demage = argument[0]

// has shield ?
if (global.player_shield > 0) {
    global.player_shield -= demage
    if (global.player_shield < 0) {
        global.player_shield = 0
    }
    exit
}

global.player_hull -= demage
if (global.player_hull <= 0) {
    global.player_hull = 0
    SetShipExplosion()
}



        

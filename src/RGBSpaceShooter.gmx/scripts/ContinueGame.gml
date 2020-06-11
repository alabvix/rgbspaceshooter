if (HasGameSaved()) {
    HandlePlayerAttributes(false)
} else {
    HandlePlayerAttributes(true)
}
room_restart();
SetGameState(global.GAME_STATE_PLAY)

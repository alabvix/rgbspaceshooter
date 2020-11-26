ResetPlayerAttributes()
if (HasGameSaved()) {
    LoadScore()
}
room_restart();
SetGameState(global.GAME_STATE_PLAY)

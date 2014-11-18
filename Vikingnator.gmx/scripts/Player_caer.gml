lives = lives - 1;
if lives < 0 {
    show_debug_message(string(lives) + "game over")
    room_goto(rmGameOver);
} else {
    show_debug_message(string(lives) + "restart")
    room_restart();
}

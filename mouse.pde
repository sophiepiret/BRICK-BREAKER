void mouseReleased() {
  background (22, 0, 255);

  if (mode == INTRO) {
    introClicks();
  } else if (mode == OPTION) {
    optionClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else {
    println("Error: Mode = " + mode);
  }
} //final

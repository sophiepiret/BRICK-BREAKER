void intro () {
  background (255);
  rect(400, 400, 200, 100); 
  fill(255);
  textSize(25);
  text( "START GAME", 400, 400 );

  fill(255, 0, 0);
  rect(400, 550, 200, 100); 
  fill(255);
  textSize(25);
  text( "OPTIONS", 400, 550 );

  fill(255, 0, 0);
  textSize(72);
  text( "CLICKER GAME", 400, 200 );

  score = 0;
  lives = 3;

  theme.play();
} //final

void introClicks() {

  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY <450) {
    x=400;
    y=400;
    mode = GAME; 
    theme.pause();
    theme.rewind();
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY <600) {
    mode = OPTION;
  }
  theme.pause();
  theme.rewind();
} //final

void pause () {
  background (0, 0, 255);

  fill(255, 0, 0);
  rect(700, 50, 100, 50); 
  fill(255);
  textSize(20);
  text( "RESUME", 700, 50 );

  theme.play();
} //final

void pauseClicks() {

  if (mouseX > 650 && mouseX < 750 && mouseY > 25 && mouseY < 75) {  //PAUSE BUTTON
    mode = GAME;
  }

  theme.pause();
  theme.rewind();
} //final

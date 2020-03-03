void gameover () {

  if (score > highscore) {
    highscore = score;
  }
  
  background (225, 0, 0);
  fill(255);
  textSize(25);
  text( "GAME OVER", 400, 400 );

  textSize(25);
  text( "High score:" + highscore, 400, 200 );

  fill(255, 0, 0);
  rect(650, 100, 200, 100); 
  fill(255);
  textSize(23);
  text( "BACK TO MENU", 650, 100 );
  
}//final

void gameoverClicks() {
  if (mouseX > 550 && mouseX < 750 && mouseY > 50 && mouseY <150) {
    mode = INTRO;
  }
} //final

void game() {
  background (0, 0, 0);

  if (tool == 1) {
    target();
  } else if (tool == 0) { 
    pinktarget();
  }

  //pause button
  fill(255, 0, 0);
  ellipse(700, 50, 57, 57);
  fill(255);
  textSize(20);
  text( "||", 700, 46 ); 

  x = x + vx;  //target moving
  y = y + vy;

  //bouncing off waLLS
  if (y < 0 + thickness/2  || y > 800 - thickness/2 )  vy = vy * -1;  
  if (x < 0 + thickness/2 || x > 800 - thickness/2 )  vx = vx * -1;  

  //score and lives
  textSize(20);
  text("score: " + score, 100, 100);
  text("lives: " + lives, 100, 130);
} //fianl

void gameClicks() {  //specific mouseReleassed

  if (dist(mouseX, mouseY, x, y) < thickness/2) {  //target
    score = score + 1;  
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 700, 50) < 28.5) {  //PAUSE BUTTON
    mode = PAUSE;
  } else {
    lives = lives - 1;
    if (lives == 0) mode = GAMEOVER; 
    bump.rewind();
    bump.play();
  }
} //final



void pinktarget() {  //PINK TARGET

  strokeWeight(0);
  fill(255, 57, 190);
  ellipse(x, y, thickness, thickness);

  fill(255);
  textSize(thickness/2);
  text( "❤", x, y );
}

void target() {

  strokeWeight(0);
  fill(255, 0, 0);
  ellipse(x, y, thickness, thickness);
}

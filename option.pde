void targetxx() {

  strokeWeight(0);
  fill(255, 0, 0);
  ellipse(500, 400, thickness, thickness);
}

void pinktargetxx() {  //PINK TARGET

  strokeWeight(0);
  fill(255, 57, 190);
  ellipse(300, 400, thickness, thickness);

  fill(255);
  textSize(thickness/2);
  text( "❤", 300, 400 );
}

void option () {  

  background (2, 0, 101);

  fill(255);
  textSize(30);
  text( "CHOOSE YOUR TARGET", 400, 300 );

  targetxx ();

  pinktargetxx();

  fill(0, 2, 200);
  rect(650, 100, 200, 100); 
  fill(255);
  textSize(23);
  text( "BACK TO MENU", 650, 100 );


  if (dist(35, sliderY, mouseX, mouseY)<= 11) {   //white around
    stroke(255);
  } else {
    noStroke();
  }

  thickness =  map(sliderY, 480, 570, 30, 110);

  stroke(255);
  line(35, 480, 35, 570); 

  fill(255, 0, 0);   //knob
  ellipse(35, sliderY, 22, 22);

  if (mousePressed) {
    println(sliderY);
    if (dist(35, sliderY, mouseX, mouseY) < 27) {
      sliderY = mouseY;
      if (sliderY > 570) sliderY = 570;   // knob cant go lower  }
      if (sliderY < 480) sliderY = 480;
    }
  }
} //final

void optionClicks() {

  if (dist(300, 400, mouseX, mouseY)<= 50) {
    tool = 0;
    mode = INTRO;
  }

  if (dist(500, 400, mouseX, mouseY)<= 50) {
    tool = 1;
    mode = INTRO;
  }

  if (mouseX > 550 && mouseX < 750 && mouseY > 50 && mouseY <150) {
    mode = INTRO;
  }
} //final

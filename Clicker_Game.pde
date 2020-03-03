import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound effect variables
Minim minim;  //tool box of functions
AudioPlayer bump, coin, theme, gameover;  //individual sounds 

int mode;
final int INTRO = 0;
final int OPTION = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
int target;
//target
float x, y, vx, vy; //vx/vy how far are you moving 
float thickness = 100;
int score, lives, highscore;
int tool; //Picking target
float sliderY;
int pinktarget;
int targetxx;
int pinktargetxx;
int toolx = 1;


void setup() {
  x = 400;
  y = 400;
  vx = random(-3, 3);
  vy = random(-3, 3);
  score = 0;
  lives = 3;
  sliderY = 480 ;

  tool = 0;
  highscore = 0;

  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  minim = new Minim(this);
  bump = minim.loadFile("bump.wav");
  coin = minim.loadFile("coin.wav");
  gameover = minim.loadFile("gameover.wav");
  theme = minim.loadFile("mario bros theme.mp3");
} //final

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == OPTION) {
    option();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
} //final 

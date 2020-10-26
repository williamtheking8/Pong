import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// William Tees-DeBeyer
//1-1A
//October 14, 2020



//mode frame
int mode;
final int INTRO = 1;
final int GAME = 2;
final int  PAUSE= 3;
final int GAMEOVER = 4;
final int OPTIONS = 5;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld,ballxv,ballyv; //ball
int P1score, P2score, timer,pongtime;
boolean AI;

//keyboard variables
boolean wkey,skey,upkey,downkey;

//Sound
Minim minim;
AudioPlayer score,rpaddle,lpaddle,wall,clap,intro;

void setup() {
  size(900,900);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  
  
  
  //left
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  //right
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  ballxv = random(-5,5);
  ballyv = random(-5,5);
  
  P1score = 0;
  P2score = 0;
  timer = 100;
  pongtime = 0;
  
  //keyboard
  wkey = skey = upkey = downkey = false;
  
  //minim
  minim = new Minim(this);
  score = minim.loadFile("score.wav");
  wall = minim.loadFile("wall.wav");
  rpaddle = minim.loadFile("rightpaddle.wav");
  lpaddle = minim.loadFile("leftpaddle.wav");
  clap = minim.loadFile("clapping.wav");
  intro = minim.loadFile("intro.wav");
}


void draw() {
  intro.play();
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME){
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Mode error: " + mode);
  }
  
}

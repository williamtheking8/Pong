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


//keyboard variables
boolean wkey,skey,upkey,downkey;

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
  ballxv = 8;
  ballyv = -5;
  
  
  //keybaord
  wkey = skey = upkey = downkey = false;
}


void draw() {
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

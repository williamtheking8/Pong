void gameover() {
  clap.rewind();
  clap.play();
  if (P1score > P2score) {
    background(123, 123, 123);


    textSize(100);
    fill(40, 40, 200);
    text("Player 1 Wins", width/2, height/3);

    tactR(width/2-200, height/2, 400, 200);
  } else if (AI == true){
    
     background(123, 123, 123);


    textSize(100);
    fill(200, 40, 40);
    text("AI Wins", width/2, height/3);

    tactR(width/2-200, height/2, 400, 200);
    
  }else{

    background(123, 123, 123);


    textSize(100);
    fill(200, 40, 40);
    text("Player 2 Wins", width/2, height/3);

    tactR(width/2-200, height/2, 400, 200);
  }
}

void gameoverClicks() {
  if (mouseX > width/2-200 && mouseX < width/2+200 && mouseY > height/2 && mouseY < height/2+200) {
    clap.rewind();
    clap.pause();
    mode = INTRO;
    leftx = 0;
    lefty = height/2;
    leftd = 200;

    
    rightx = width;
    righty = height/2;
    rightd = 200;

    
    ballx = width/2;
    bally = height/2;
    balld = 100;
    ballxv = 5;
    ballyv = -5;

    P1score = 0;
    P2score = 0;
    timer = 100;
    pongtime = 0;
  }
}

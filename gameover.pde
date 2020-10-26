void gameover() {
  pongtime++;
  clap.play();

  //PLAYER 1 WINS ////////////////////////////////////////////////////////////////////////////////////////////
  if (P1score > P2score) {
    background(123, 123, 123);

    if (pongtime < 50) {
      fill(124, 43, 152);
      textSize(125);
      text("Player 1 Wins", 450, 300);
      fill(255);
      text("Player 1 Wins", 445, 295);
    } 
    if (pongtime > 50 && pongtime < 100 ) {
      fill(#AF35A3);
      textSize(125);
      text("Player 1 Wins", 550, 300);
      fill(255);
      text("Player 1 Wins", 545, 295);
    }
    if (pongtime > 100 && pongtime < 150 ) {
      fill(#EA1313);
      textSize(125);
      text("Player 1 Wins", 650, 300);
      fill(255);
      text("Player 1 Wins", 645, 295);
    }
    if (pongtime > 150 && pongtime < 200 ) {
      fill(#EA7113);
      textSize(125);
      text("Player 1 Wins", 750, 300);
      fill(255);
      text("Player 1 Wins", 745, 295);
    }
    if (pongtime > 200 && pongtime < 250 ) {
      fill(#EAE413);
      textSize(125);
      text("Player 1 Wins", 150, 300);
      fill(255);
      text("Player 1 Wins", 145, 295);
    }
    if (pongtime > 250 && pongtime < 300 ) {
      fill(#13EA2A);
      textSize(125);
      text("Player 1 Wins", 250, 300);
      fill(255);
      text("Player 1 Wins", 245, 295);
    }
    if (pongtime > 300 && pongtime < 350 ) {
      fill(#1335EA);
      textSize(125);
      text("Player 1 Wins", 350, 300);
      fill(255);
      text("Player 1 Wins", 345, 295);
    }
    if (pongtime > 350 ) {
      pongtime = 0;
    }


   
    fill(0, 0, 255);
    tactR(width/2-200, height/2, 400, 200);
    textSize(50);
    fill(255);
     text("Play Again?", width/2, height/2+100);
  }         // AI WINS/////////////////////////////////////////////////////////////////////////////////////////////////////////
  else if (AI == true) {

    background(123, 123, 123);


      if (pongtime < 50) {
      fill(124, 43, 152);
      textSize(125);
      text("AI Wins", 450, 300);
      fill(255);
      text("AI Wins", 445, 295);
    } 
    if (pongtime > 50 && pongtime < 100 ) {
      fill(#AF35A3);
      textSize(125);
      text("AI Wins", 550, 300);
      fill(255);
      text("AI Wins", 545, 295);
    }
    if (pongtime > 100 && pongtime < 150 ) {
      fill(#EA1313);
      textSize(125);
      text("AI Wins", 650, 300);
      fill(255);
      text("AI Wins", 645, 295);
    }
    if (pongtime > 150 && pongtime < 200 ) {
      fill(#EA7113);
      textSize(125);
      text("AI Wins", 750, 300);
      fill(255);
      text("AI Wins", 745, 295);
    }
    if (pongtime > 200 && pongtime < 250 ) {
      fill(#EAE413);
      textSize(125);
      text("AI Wins", 150, 300);
      fill(255);
      text("AI Wins", 145, 295);
    }
    if (pongtime > 250 && pongtime < 300 ) {
      fill(#13EA2A);
      textSize(125);
      text("AI Wins", 250, 300);
      fill(255);
      text("AI Wins", 245, 295);
    }
    if (pongtime > 300 && pongtime < 350 ) {
      fill(#1335EA);
      textSize(125);
      text("AI Wins", 350, 300);
      fill(255);
      text("AI Wins", 345, 295);
    }
    if (pongtime > 350 ) {
      pongtime = 0;
    }


   
    fill(255,0,0);
    tactR(width/2-200, height/2, 400, 200);
    textSize(50);
    fill(255);
    text("Try Again?", width/2, height/2+100);
  } else {    // PLAYER 2 WINS///////////////////////////////////////////////////////////////////////////////////////////////////////////

    background(123, 123, 123);


     if (pongtime < 50) {
      fill(124, 43, 152);
      textSize(125);
      text("Player 2 Wins", 450, 300);
      fill(255);
      text("Player 2 Wins", 445, 295);
    } 
    if (pongtime > 50 && pongtime < 100 ) {
      fill(#AF35A3);
      textSize(125);
      text("Player 2 Wins", 550, 300);
      fill(255);
      text("Player 2 Wins", 545, 295);
    }
    if (pongtime > 100 && pongtime < 150 ) {
      fill(#EA1313);
      textSize(125);
      text("Player 2 Wins", 650, 300);
      fill(255);
      text("Player 2 Wins", 645, 295);
    }
    if (pongtime > 150 && pongtime < 200 ) {
      fill(#EA7113);
      textSize(125);
      text("Player 2 Wins", 750, 300);
      fill(255);
      text("Player 2 Wins", 745, 295);
    }
    if (pongtime > 200 && pongtime < 250 ) {
      fill(#EAE413);
      textSize(125);
      text("Player 2 Wins", 150, 300);
      fill(255);
      text("Player 2 Wins", 145, 295);
    }
    if (pongtime > 250 && pongtime < 300 ) {
      fill(#13EA2A);
      textSize(125);
      text("Player 2 Wins", 250, 300);
      fill(255);
      text("Player 2 Wins", 245, 295);
    }
    if (pongtime > 300 && pongtime < 350 ) {
      fill(#1335EA);
      textSize(125);
      text("Player 2 Wins", 350, 300);
      fill(255);
      text("Player 2 Wins", 345, 295);
    }
    if (pongtime > 350 ) {
      pongtime = 0;
    }


   
    fill(255,0,0);
    tactR(width/2-200, height/2, 400, 200);
    textSize(50);
    fill(255);
     text("Play Again?", width/2, height/2+100);
  }//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}

void gameoverClicks() {
  if (mouseX > width/2-200 && mouseX < width/2+200 && mouseY > height/2 && mouseY < height/2+200) {
    clap.rewind();
    clap.pause();
    intro.rewind();
    intro.play();
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

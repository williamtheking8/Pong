void game() {
  
  //background detail
  background(#FFBB4D);
  fill(#FFBB4D);
  stroke(255);
  circle(-100, height/2, width);
  circle(width+100, height/2, width);
  line(width/2, 0, width/2, height);

  if (AI == true) {
    if (ballx > width/2-50) {

      if (bally == righty || righty < bally+50 && righty > bally-50) {
        downkey = false;
        upkey = false;
      } else if (bally < righty) {
        downkey = false;
        upkey = true;
      } else if (bally > righty) {

        upkey = false;
        downkey = true;
      }
    } else {
      downkey = false;
      upkey = false;
    }
  }

  //Score display
  stroke(0);
  strokeWeight(5);
  fill(5, 63, 23);
  textSize(50);
  text(P1score, width/4, 200);
  text(P2score, width-width/4, 200);


  //Winner?
  if (P1score >= 3) {
    mode = GAMEOVER;
  } 
  if (P2score >= 3) {
    mode = GAMEOVER;
  }


  //ball  timer

  if (timer < 0) {

    ballx = ballx + ballxv;
    bally = bally + ballyv;
  }
  timer = timer -1;

//SCORING
  if (ballx > width+50) {
    ballxv = random(-5, 5);
    ballyv = random(-5, 5);
    P1score++;
    ballx = width/2;
    bally = height/2;
    timer = 100;

    score.rewind();
    score.play();
  }
  if (ballx < -50) {
    ballxv = random(-5, 5);
    ballyv = random(-5, 5);
    P2score++;
    ballx = width/2;
    bally = height/2;
    timer = 100;

    score.rewind();
    score.play();
  }
  if (bally > height-50 || bally < 50) {
    ballyv = ballyv*-1;
    wall.rewind();
    wall.play();
  }

  //paddle
  fill(0, 0, 255);
  circle(leftx, lefty, leftd);
  fill(255, 0, 0);
  circle(rightx, righty, rightd);

  //paddle boundries
  if (righty > 800) {
    righty = 800;
  }
  if (righty < 100) {
    righty = 100;
  } 
  if (lefty > 800) {
    lefty = 800;
  }
  if (lefty < 100) {
    lefty = 100;
  }
  if (bally > 850 ) {
    bally = 850;
  }
  if (bally < 50) {
    bally = 50;
  }

  //movment paddles
  if (wkey == true) lefty = lefty - 8;
  if (skey == true) lefty = lefty + 8;
  if (upkey == true) righty = righty - 8;
  if (downkey == true) righty = righty + 8;


  //ball
  fill(255);
  circle(ballx, bally, balld);

  if (ballxv > -2 && ballxv < 0) {
    ballxv = ballxv - 2;
  }
  if (ballxv < 2 && ballxv > 0) {
    ballxv = ballxv + 2;
  }


    // PHYSICS
  if ( dist(ballx, bally, leftx, lefty) <= (balld/2 +leftd/2)) {
    ballxv = (ballx-leftx)/10;
    ballyv = (bally-lefty)/10;
    lpaddle.rewind();
    lpaddle.play();
  }
  if ( dist(ballx, bally, rightx, righty) <= (balld/2 + rightd/2)) {
    ballxv = (ballx-rightx)/10;
    ballyv = (bally-righty)/10;
    rpaddle.rewind();
    rpaddle.play();
  }
}


void gameClicks() {
  mode = PAUSE;
}

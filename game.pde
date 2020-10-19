void game() {
  background(255,255,0);
  
  stroke(0);
  strokeWeight(5);
  fill(255);
  
  ballx = ballx + ballxv;
  bally = bally + ballyv;
  
  if(ballx > width-50 || ballx < 50) {
    ballxv = ballxv*-1;
  }
   if(bally > height-50 || bally < 50) {
    ballyv = ballyv*-1;
  }
  
  //paddle
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  
  //paddle boundries
  if(righty > 800){
   righty = 800;
  }
   if(righty < 100){
   righty = 100;
  } 
  if(lefty > 800){
   righty = 800;
  }
   if(lefty < 100){
   lefty = 100;
  }
  
  
  //movment paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  //ball
 circle(ballx,bally,balld);
  
  if ( dist(ballx,bally,leftx,lefty) <= (balld/2 +leftd/2)){
  ballxv = (ballx-leftx)/10;
  ballyv = (bally-lefty)/10;
  
  }
    if ( dist(ballx,bally,rightx,righty) <= (balld/2 + rightd/2)){
  ballxv = (ballx-rightx)/10;
  ballyv = (bally-righty)/10;
}
}
  

void gameClicks() {
  
}

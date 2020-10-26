void intro() {
  
  //title timer
  pongtime++;
  
  
  background(12,32,54);
  
  //1 player
  fill(140,83,255);
  tactR(100,500,300,200);
  
  //2 player
  fill(140,83,255);
  tactR(500,500,300,200);
  
  //TITLE LOGIC ////////////////////////////////////////////////////////////////////////
  if(pongtime < 50) {
  fill(124,43,152);
  textSize(200);
  text("PONG", 450,300);
  fill(255);
  text("PONG", 445,295);
  } 
  if(pongtime > 50 && pongtime < 100 ) {
  fill(#AF35A3);
  textSize(200);
  text("PONG", 550,300);
  fill(255);
  text("PONG", 545,295);
  }
  if(pongtime > 100 && pongtime < 150 ) {
  fill(#EA1313);
  textSize(200);
  text("PONG", 650,300);
  fill(255);
  text("PONG", 645,295);
  }
  if(pongtime > 150 && pongtime < 200 ) {
  fill(#EA7113);
  textSize(200);
  text("PONG", 750,300);
  fill(255);
  text("PONG", 745,295);
  }
  if(pongtime > 200 && pongtime < 250 ) {
  fill(#EAE413);
  textSize(200);
  text("PONG", 150,300);
  fill(255);
  text("PONG", 145,295);
  }
  if(pongtime > 250 && pongtime < 300 ) {
  fill(#13EA2A);
  textSize(200);
  text("PONG", 250,300);
  fill(255);
  text("PONG", 245,295);
  }
   if(pongtime > 300 && pongtime < 350 ) {
  fill(#1335EA);
  textSize(200);
  text("PONG", 350,300);
  fill(255);
  text("PONG", 345,295);
  
  }
  if(pongtime > 350 ) {
    pongtime = 0;
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //words
  fill(255);
  textSize(50);
  text("1 Player", 250,600);
  text("2 Player", 650,600);
}

void introClicks() {
  if(mouseX > 100 && mouseX < 400 && mouseY > 500 && mouseY < 700){
    mode = GAME;
    AI = true;
    intro.rewind();
    intro.pause();
    pongtime = 0;
  }
   if(mouseX > 500 && mouseX < 800 && mouseY > 500 && mouseY < 700){
    mode = GAME;
    AI = false;
    intro.rewind();
    intro.pause();
    pongtime = 0;
   }
  
  
  
  
}

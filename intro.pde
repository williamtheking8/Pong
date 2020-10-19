void intro() {
  background(12,32,54);
  fill(140,83,255);
  tactR(300,500,250,200);
  
  
  fill(124,43,152);
  textSize(200);
  text("PONG", 450,300);
  
  
  
}

void introClicks() {
  if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 700){
    mode = GAME;
  }
  
  
  
  
  
}

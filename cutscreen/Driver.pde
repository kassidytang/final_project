void setup(){
  size(1080, 480);
}

void draw(){
  //nxtLvl level = new nxtLvl(2, width, height);
  //level.draw();
  
  startScreen screen = new startScreen(width, height);
  screen.draw();
}

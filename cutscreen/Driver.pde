PVector mPos = new PVector(width, 310);
int mDim = 40;
int monHealth = 30;
color fCol = color(211, 245, 137);
color sCol = color(181, 214, 111);

void setup(){
  size(1080, 480);
  background(255, 255, 255);
}

void draw(){
  //nxtLvl level = new nxtLvl(2, width, height);
  //level.draw();
  
  //startScreen screen = new startScreen(width, height);
  //screen.draw();
  
  monster blob = new monster(mPos, mDim, monHealth, fCol, sCol);
  blob.draw();
}

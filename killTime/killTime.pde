// global variables
int avatarX = 360;
int avatarY = 240;
int monsterX = 1080;
int monsterY = 310;

void setup(){
  size(1080,480);
  
  // scenery day
  background(215, 255, 250);
  fill(172, 208, 166);
  stroke(154, 194, 148);
  rect(0, height - height/3, width, height/3);
  
  avatar(avatarX, avatarY);
  monster(monsterX, monsterY);
}

void avatar(int x, int y){
  int bodyW = 70;
  int bodyH = 90;
  
  // body
  fill(255, 253, 215);
  stroke(225, 202, 176);
  rect(x , y, bodyW, bodyH);
  
  /*
  // ears
  ellipse(x, y, bodyW/2, bodyH/2);
  ellipse(x + bodyW, y, bodyW/2, bodyH/2);
  */
}

void monster(int x, int y){
  int bodyWH = 40;
  // body
  fill(209, 190, 226);
  stroke(192, 168, 214);
  ellipse(x, y, bodyWH, bodyWH);
}

void sword(int x, int y){
  
  // sword
  
}

void keyPressed(){
  if (key == 'a')
    
  if (key == 'd')
    
}

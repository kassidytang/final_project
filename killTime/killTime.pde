// global variables
PVector avatarPos;
PVector monPos;
PVector swordPos;
PVector dir = new PVector(0,0);

float rotation;

int spd = 20;

void setup(){
  size(1080,480);
  
  // scenery day
  background(215, 255, 250);
  fill(172, 208, 166);
  stroke(154, 194, 148);
  rect(0, height - height/3, width, height/3);
}

void draw(){
  avatarPos = new PVector(0, 240);
  monPos = new PVector(width, 310);
  swordPos = new PVector(avatarPos.x + 60, avatarPos.y);
  
  drawAvatar();
  drawMonster();
  drawSword();
  
  /*
  if (frameCount % 20 == 0){
    updateAvatar();
  }
  */
}

void drawAvatar(){
  background(215, 255, 250);
  fill(172, 208, 166);
  stroke(154, 194, 148);
  rect(0, height - height/3, width, height/3);
  
  int bodyW = 70;
  int bodyH = 90;
  
  // body
  fill(255, 253, 215);
  stroke(225, 202, 176);
  rect(avatarPos.x , avatarPos.y, bodyW, bodyH);
  
  /*
  // ears
  ellipse(x, y, bodyW/2, bodyH/2);
  ellipse(x + bodyW, y, bodyW/2, bodyH/2);
  */
}

void drawMonster(){
  int bodyWH = 40;
  // body
  fill(209, 190, 226);
  stroke(192, 168, 214);
  ellipse(monPos.x, monPos.y, bodyWH, bodyWH);
}

void drawSword(){
  
  int sThickness = 6;
  int sLength = 40;
  
  if (rotation != 0){
    translate(swordPos.x + 220,swordPos.y - 150);
    rotate(rotation);
  }
  
  fill(146, 114, 68);
  stroke(146, 114, 68);
  
  // stick
  rect(swordPos.x, swordPos.y, sThickness, sLength);
  triangle(swordPos.x, swordPos.y, swordPos.x + 3, swordPos.y - 3, swordPos.x + 6, swordPos.y);
  rotation = 0;
}

void updateAvatar(){
  //avatarPos.add(dir);
}

void mouseClicked(){
  frameRate(30);
  rotation = PI/3.0;
}

void keyPressed(){
  if (key == 'a')
    dir = new PVector(-5, 0);
  if (key == 'd')
    dir = new PVector(5, 0);
}

// global variables
PVector avatarPos;
PVector monPos;
PVector tempSword;
PVector swordPos;
PVector cloudPos;
PVector dir = new PVector(0,0);

float rotation;

int cloudNum = 3;
int spd = 20;

void setup(){
  size(1080,480);
  
  // scenery day
  background(215, 255, 250);
  fill(172, 208, 166);
  stroke(172, 208, 166);
  rect(0, height - height/3, width, height/3);
  
  avatarPos = new PVector(0, 250);
  monPos = new PVector(width, 310);
  cloudPos = new PVector(100, 100);
  swordPos = new PVector(avatarPos.x + 50, avatarPos.y);
  
}

void draw(){
  drawAvatar();
  drawMonster();
  drawClouds();
  drawSword();
  
  if (frameCount % 10 == 0){
    updateCharacters();
  }
}

void drawAvatar(){
  background(215, 255, 250);
  fill(172, 208, 166);
  stroke(172, 208, 166);
  rect(0, height - height/3, width, height/3);
  
  int bodyW = 60;
  int bodyH = 80;
  
  // body
  fill(255, 253, 215);
  stroke(255, 253, 215);
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
  
  tempSword = swordPos;
  
  if (rotation != 0){
    translate(swordPos.x + 290,swordPos.y - 10);
    rotate(rotation);
  }
  
  fill(146, 114, 68);
  stroke(146, 114, 68);
  
  // stick
  rect(swordPos.x, swordPos.y, sThickness, sLength);
  triangle(swordPos.x, swordPos.y, swordPos.x + 3, swordPos.y - 3, swordPos.x + 6, swordPos.y);
  rotation = 0;
}

void drawClouds(){
  fill(255, 255, 255);
  stroke(255, 255, 255);
    
  
  ellipse(cloudPos.x, cloudPos.y, 100, 60);
  ellipse(cloudPos.x + 60, cloudPos.y - 20, 100, 60);
  ellipse(cloudPos.x + 80, cloudPos.y + 10, 150, 70);
  
  ellipse(cloudPos.x + 400, cloudPos.y + 50, 150, 80);
  ellipse(cloudPos.x + 470, cloudPos.y + 40, 130, 70);
  
  // cloud 2
  ellipse(cloudPos.x + 750, cloudPos.y, 120, 70);
  ellipse(cloudPos.x + 810, cloudPos.y - 30, 100, 60);
}

void updateCharacters(){
  avatarPos.add(dir);
  swordPos.add(dir);
  monPos.sub(dir);
  cloudPos.sub(dir);
  dir = new PVector(0,0);
}

void mouseClicked(){
  frameRate(30);
  rotation = HALF_PI;
}

void keyPressed(){
  frameRate(100);
  if (key == 'a'){
    dir = new PVector(-10, 0);
  }
  if (key == 'd'){
    dir = new PVector(10, 0);
  }
}

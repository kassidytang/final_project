// global variables
PVector avatarPos;
PVector monPos;
PVector tempSword;
PVector swordPos;
PVector cloudPos;
PVector dir = new PVector(0,0);

float rotation;

// scoring system
int kills = 0;
int damange = 0;
int monHealth = 20; // initial monster health
int playHealth = 100; // initial player health

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
  swordPos = new PVector(avatarPos.x + 60, avatarPos.y);
  
  
}

void draw(){
  
  drawAvatar();
  drawMonster();
  drawClouds();

  fill(0, 0, 0);
  textSize(15);
  text("KILLS: " + kills, 5, height - 5);
  text("PLAYER HEALTH: " + playHealth, 90, height - 5);
  text("LEVEL: ", 250, height - 5);

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
  stroke(199, 167, 133);
  rect(avatarPos.x , avatarPos.y, bodyW, bodyH, 12);
  
  // ears
  ellipse(avatarPos.x, avatarPos.y + 20, bodyW/2, bodyH/2);
  ellipse(avatarPos.x + bodyW, avatarPos.y + 20, bodyW/2, bodyH/2);
  
  // hat
  fill(92, 64, 23);
  stroke(92, 64, 23);
  ellipse(avatarPos.x + 30, avatarPos.y, 50, 20);
  ellipse(avatarPos.x + 30, avatarPos.y - 10, 5, 10);
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
    translate(swordPos.x + 290, swordPos.y + 50);
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

  for (float i = cloudPos.x; i < 2*width; i += 900){
    ellipse(i + 60, cloudPos.y - 20, 100, 60);
    ellipse(i + 80, cloudPos.y + 10, 150, 70);
  }
  
  for (float i = cloudPos.x + 400; i < 2*width; i += 900){
    ellipse(i, cloudPos.y + 50, 150, 80);
    ellipse(i + 70, cloudPos.y + 40, 130, 70);
  }
  
  for (float i = cloudPos.x + 750; i < 2*width; i += 900){
    ellipse(i, cloudPos.y, 120, 70);
    ellipse(i + 60, cloudPos.y - 30, 100, 60);
  }
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

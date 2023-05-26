// global variables
PVector avatarPos;
PVector monPos;
PVector tempSword;
PVector swordPos;
PVector cloudPos;
PVector dir = new PVector(0,0);

// new format/classes
class main{
  
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
}

class avatar{
  
  void avatar(PVector)
  
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
  
}

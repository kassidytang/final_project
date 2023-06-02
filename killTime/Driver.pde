float rotation;
PVector dir = new PVector(0,0);
PVector aPos;
PVector mPos;
PVector cPos;
PVector sPos;
PVector backwards = new PVector(-10,0);

int kills = 0;
int pHealth = 100;
int monHealth = 30;
int level = 0;
int damage = 0;

// monster color change
color damageCol = color(250, 135, 135);
color damageLine = color(198, 93, 93);
color normCol = color(209, 190, 226);
color normLine = color(192, 168, 214);

void setup(){
    size(1080, 480);
    
    // background
    back();
    
    aPos = new PVector(0, 250);
    mPos = new PVector(width, 310);
    cPos = new PVector(100, 100);
    sPos = new PVector(aPos.x  + 60, aPos.y);
}
  
void back(){
  background(215, 255, 250);
  fill(172, 208, 166);
  stroke(172, 208, 166);
  rect(0, height - height/3, width, height/3);
}

void draw(){
  back();
  
  score curScore = new score(kills, pHealth, level);
  curScore.draw();
  
  avatar pupu = new avatar(aPos);
  pupu.draw();
  
  monster blob = new monster(mPos, normCol, normLine);
  blob.draw();

  cloud puff = new cloud(cPos);
  puff.draw();
  
  sword stick = new sword(sPos);
  if (rotation != 0){
    translate(sPos.x + 290, sPos.y - 20);
    rotate(rotation);
  }
  stick.draw();

  rotation = 0;
  
  if (frameCount % 10 == 0){
    updateCharacters();
  }
}

void updateCharacters(){
  aPos.add(dir);
  sPos.add(dir);
  mPos.sub(dir);
  cPos.sub(dir);
  dir = new PVector(0,0);
  
  // monster damaged
  if (sPos.x >= mPos.x){
    damage += 10;
    System.out.println(damage);
  }
  
  // monster killed
  if (damage == monHealth){
    damage = 0;
    kills += 1;
    mPos = new PVector(width, 310);
    
    
    // player moves back to og position
    while (aPos.x > 0){
      frameRate(100);
      aPos.add(backwards);
    }
  }
  
  // next level
  if (kills == 5){
    kills = 0;
    level += 1;
    
    monHealth += 50;
  }
  
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

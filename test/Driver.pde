float rotation;
PVector dir = new PVector(0,0);
PVector aPos;
PVector mPos;
PVector cPos;
PVector sPos;

int kills = 0;
int pHealth = 100;
int level = 0;

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
  
  monster blob = new monster(mPos);
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

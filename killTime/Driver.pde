float rotation;
int mDim = 40; //monster dimension
PVector aPos;
PVector mPos;
PVector cPos;
PVector sPos;
PVector curSPos;
PVector dir = new PVector(0, 0);
PVector monDir = new PVector(0,0);
PVector backwards = new PVector(-10, 0);

int kills = 0;
int pHealth = 50;
int monHealth = 30;
int curHealth = 30;
int level = 1;
int damage = 10;
int strength = 10;
int deaths = 0;

// monster color change
color normCol = color(211, 245, 137);
color normLine = color(181, 214, 111);

// times of the day
StringList times = new StringList(new  String[] {"day", "sunset", "night"});
int timesPos = 0; // 0 - day, 1 - sunset, 2 - night
String actualTime = times.get(timesPos);

int start = 0; // 0 = start screen
int nxtLvl = 0; // 0 = not new level

int sThickness = 6;
int sLength = 40;

int monSpd = 80;

void setup() {
  size(1080, 480); 

  aPos = new PVector(0, 260);
  mPos = new PVector(width, 310);
  cPos = new PVector(100, 100);
  sPos = new PVector(0,0);
  curSPos = new PVector(0,0);
}

void draw() {
  if (nxtLvl == 1){
    nxtLvl level = new nxtLvl(2, width, height);
    level.draw();
  }
  else if (start == 0){
    startScreen screen = new startScreen(width, height);
    screen.draw();
  }
  else if (start == 1){
    rectMode(CORNER);
    // background
    bg background = new bg(actualTime);
    background.draw();
  
    score curScore = new score(kills, pHealth, level);
    curScore.draw();
  
    avatar pupu = new avatar(aPos);
    pupu.draw();
  
    monster blob = new monster(mPos, mDim, monHealth, normCol, normLine);
    blob.draw();
  
    cloud puff = new cloud(cPos);
    puff.draw();
  
    sword stick = new sword(sPos, sThickness, sLength);
    
    if (rotation != 0) {
      pushMatrix();
      translate(aPos.x + 100, aPos.y + 30);
      rotate(rotation);
      stick.draw();
      popMatrix();
    }else{
      translate(aPos.x  + 60, aPos.y);
      stick.draw();
    }
  
    rotation = 0;
    rectMode(CORNER);
  
    if (frameCount % 10 == 0) {
      updateCharacters();
    }
  }
  
}

void updateCharacters() {
  aPos.add(dir);
  mPos.sub(dir);
  cPos.sub(dir);
  
  // player getting damaged
  monDir = new PVector(10,0);
  frameRate(monSpd);
  if (mPos.x < aPos.x + 30){
    mPos.add(monDir);
  }
  else if (mPos.x > aPos.x + 30){
    mPos.sub(monDir);
  }
    
  monDir = new PVector(0,0);
  dir = new PVector(0, 0);

  // monster damaged
  if ((curSPos.x < mPos.x + 20) && (curSPos.x > mPos.x - 20) ) {
    damage += strength;
    monHealth -= strength;
    curSPos = new PVector(0,0);
    normCol = color(250, 135, 135);
    normLine = color(198, 93, 93);
  }

  // monster killed
  if (damage >= curHealth) {
    damage = 0;
    normCol = color(211, 245, 137);
    normLine = color(181, 214, 111);
    kills += 1;
    monHealth = curHealth;
    
    mPos = new PVector(width, 310);
  }
 
  if (mPos.x == aPos.x + 30){
    pHealth -= level * 10;
  }
  
  // player killed
  if (pHealth <= 0){
    pushMatrix();
    frameRate(2);
    textSize(50);
    text("YOU DIED (o´▽`o)", 0, 50);
    popMatrix();
    
    deaths += 1;
    reset();
  }

  // next level
  if (kills == 3) {
    kills = 0;
    level += 1;
    nxtLvl = 1;

    monSpd += 20;
    monHealth += 50;
    curHealth += 50;
    mDim += 20;
    
    if (timesPos < times.size() - 1){
      timesPos += 1;
      actualTime = times.get(timesPos);
    }else{
      timesPos = 0;
      actualTime = times.get(timesPos);
    }
  }
}

void reset(){
  kills = 0;
  pHealth = 50;
  monHealth = 30;
  curHealth = 30;
  level = 1;
  damage = 0;
  timesPos = 0;
  strength = 10;
  start = 0;
  nxtLvl = 0;
  sThickness = 6;
  sLength = 40;
  monSpd = 80;
  mDim = 40;
  
  normCol = color(211, 245, 137);
  normLine = color(181, 214, 111);
  
  actualTime = times.get(timesPos);
  aPos = new PVector(0, 260);
  mPos = new PVector(width, 310);
  cPos = new PVector(100, 100);
  sPos = new PVector(0,0);
}

void mouseClicked() {
  frameRate(30);
  rotation = radians(80);
  curSPos = new PVector(aPos.x + 100, aPos.y + 30);
}

void keyPressed() {
  frameRate(100);
  if (key == 'a') {
    dir = new PVector(-10, 0);
  }
  if (key == 'd') {
    dir = new PVector(10, 0);
  }
  if (key == 'p') {
    start = 1;
  }
  if (key == 'g') {
    strength += 5;
    nxtLvl = 0;
  }
  if (key == 'h') {
    pHealth += 10;
    nxtLvl = 0;
  }
}

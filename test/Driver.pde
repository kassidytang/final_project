void setup(){
    size(1080, 480);
    
    // background
    back();
}
  
void back(){
  background(215, 255, 250);
  fill(172, 208, 166);
  stroke(172, 208, 166);
  rect(0, height - height/3, width, height/3);
}

void draw(){
  PVector aPos = new PVector(0, 250);
  avatar pupu = new avatar(aPos);
  pupu.drawAvatar();
  
  PVector mPos = new PVector(width, 310);
  monster blob = new monster(mPos);
  blob.drawMonster();
  /*
  if (frameCount % 10 == 0){
    updateCharacters();
  }
  */
}

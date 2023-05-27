class sword{
  int sThickness = 6;
  int sLength = 40;
  float rotation;
  PVector swordPos;
  
  sword(PVector weapon){
    swordPos = weapon;
  }
  
  void drawSword(){
    fill(146, 114, 68);
    stroke(146, 114, 68);
    
    if (rotation != 0){
      translate(400, swordPos.y);
    }
    
    // stick
    rect(swordPos.x, swordPos.y, sThickness, sLength);
    triangle(swordPos.x, swordPos.y, swordPos.x + 3, swordPos.y - 3, swordPos.x + 6, swordPos.y);
  }
  
  void mouseClicked(){
    frameRate(30);
    rotation = HALF_PI;
  }
}

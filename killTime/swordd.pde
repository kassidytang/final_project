class sword{
  int sThickness = 6;
  int sLength = 40;
  float rotation;
  PVector swordPos;
  
  sword(PVector weapon){
    swordPos = weapon;
  }
  
  void draw(){
    fill(146, 114, 68);
    stroke(146, 114, 68);
    
    // stick
    rect(swordPos.x, swordPos.y, sThickness, sLength);
  }
}

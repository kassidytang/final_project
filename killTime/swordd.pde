class sword{
  int sThickness;
  int sLength;
  float rotation;
  PVector swordPos;
  
  sword(PVector weapon, int t, int l){
    swordPos = weapon;
    sThickness = t;
    sLength = l;
  }
  
  void draw(){
    fill(146, 114, 68);
    stroke(146, 114, 68);
    
    // stick
    rect(swordPos.x, swordPos.y, sThickness, sLength);
  }
}

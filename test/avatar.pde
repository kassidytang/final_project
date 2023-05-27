class avatar{
  int bodyW = 60;
  int bodyH = 80;
  PVector avatarPos;
  PVector swordPos;
  
  avatar(PVector pom){
    avatarPos = pom;
  }
  
  void drawAvatar(){
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
    
    // with sword
    swordPos = new PVector(avatarPos.x  + 60, avatarPos.y);
    sword stick = new sword(swordPos);
    stick.drawSword();
  }
}

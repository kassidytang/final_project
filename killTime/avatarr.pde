class avatar{
  int bodyW = 60;
  int bodyH = 70;
  PVector avatarPos;
  
  avatar(PVector pom){
    avatarPos = pom;
  }
  
  void draw(){
    // ears
    fill(255, 253, 215);
    stroke(255, 253, 215);
    arc(avatarPos.x, avatarPos.y + 20, 40, 30, radians(50), radians(270), OPEN);
    arc(avatarPos.x + bodyW, avatarPos.y + 20, 40, 30, radians(270), radians(490), OPEN);
    
    // body
    rect(avatarPos.x , avatarPos.y, bodyW, bodyH, 12);
    
    // hat
    fill(92, 64, 23);
    stroke(92, 64, 23);
    ellipse(avatarPos.x + 30, avatarPos.y, 50, 20);
    ellipse(avatarPos.x + 30, avatarPos.y - 10, 5, 10);
    
    // face
    ellipse(avatarPos.x + 10, avatarPos.y + 25, 2, 2);
    ellipse(avatarPos.x + 48, avatarPos.y + 25, 2, 2);
    noFill();
    arc(avatarPos.x + 25, avatarPos.y + 25, 10, 10, 0, PI);
    arc(avatarPos.x + 35, avatarPos.y + 25, 10, 10, 0, PI);
    
  }
}

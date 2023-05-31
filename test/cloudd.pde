class cloud{
  PVector cloudPos;
  
  cloud(PVector poof){
    cloudPos = poof;
  }
  
  void draw(){
    fill(255, 255, 255);
    stroke(255, 255, 255);
  
    for (float i = cloudPos.x; i < 2*width; i += 900){
      ellipse(i, cloudPos.y, 100, 60);
      ellipse(i + 60, cloudPos.y - 20, 100, 60);
      ellipse(i + 80, cloudPos.y + 10, 150, 70);
    }
    
    for (float i = cloudPos.x + 400; i < 2*width; i += 900){
      ellipse(i, cloudPos.y + 50, 150, 80);
      ellipse(i + 70, cloudPos.y + 40, 130, 70);
    }
    
    for (float i = cloudPos.x + 750; i < 2*width; i += 900){
      ellipse(i, cloudPos.y, 120, 70);
      ellipse(i + 60, cloudPos.y - 30, 100, 60);
    }
  }
}

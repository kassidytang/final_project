void setup(){
  size(1080,480);
  background(215, 255, 250);
  
  avatar(width/2, height/2);
}

void avatar(int x, int y){
  int bodyW = 70;
  int bodyH = 90;
  
  // body
  fill(255, 253, 215);
  stroke(225, 202, 176);
  rect(x , y, bodyW, bodyH);
  
  // ears
  ellipse(x, y, bodyW/2, bodyH/2);
  ellipse(x + bodyW, y, bodyW/2, bodyH/2);
}

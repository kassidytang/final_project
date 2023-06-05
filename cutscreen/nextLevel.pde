class nxtLvl{
  int level;
  int w, h;
  int option;
  int choice;
  
  nxtLvl(int lvl, int widt, int heigh){
    level = lvl;
    w = widt;
    h = heigh;
  }
  
  void draw(){
    rectMode(CENTER);
    stroke(197, 171, 134);
    fill(255, 246, 212);
    
    // option 1
    rect(w/4, h/2, w/4, h/4, 12);
    
    // option 2
    rect(w - w/4, h/2, w/4, h/4, 12);
    
    fill(124, 94, 56);
    pushMatrix();
      translate(-150, 20);
      textSize(100);
      text("NEW LEVEL", w/2 - 50, h/4);
      textSize(35);
      translate(30, - 5);
      text("weapon upgrade", w/4, h/2);
      text("health upgrade", w - w/4, h/2);
    popMatrix();
  }
  
  void mouseClicked(){
    if (mouseY >= height / 4 && mouseY <= 3 * height / 4){
      if (mouseX >= width / 8 && width <= 3 * width / 8)
        choice = 0;
      else if (mouseX >= 5 * width / 8 && mouseX <= 7 * width / 8)
        choice = 1;
    }
  }
}

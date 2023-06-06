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
      translate(-145, 30);
      textSize(80);
      text("NEW LEVEL", w/2 - 50, h/4);
      textSize(35);
      translate(30, -20);
      text("weapon upgrade", w/4 - 8, h/2);
      //text("health upgrade", w - w/4 + 5, h/2);
    popMatrix();
    
    // sword for weapon
    //rotate(radians(60));
    rect(w/2, h/2, 30, 5);
    rect(w/2 - 5, h/2 + 5, 40, 5);
    rect(w/2 - 10, h/2 + 10, 40, 5);
    rect(w/2 - 20, h/2 + 15, 40, 5);
    rect(w/2 - 30, )
    
    // heart for health
    translate(250, -20);
    fill(255, 123, 123);
    stroke(255, 123, 123);
    rect(w/2 - 5, h/2 - 10, 10, 8);
    rect(w/2 + 35, h/2 - 10, 10, 8);
    rect(w/2 - 5, h/2, 30, 10);
    rect(w/2 + 35, h/2, 30, 10);
    rect(w/2 + 15, h/2 + 15, 80, 20);
    rect(w/2 + 15, h/2 + 30, 60, 10);
    rect(w/2 + 15, h/2 + 40, 40, 10);
    rect(w/2 + 15, h/2 + 50, 20, 10);
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

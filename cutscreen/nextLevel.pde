class nxtLvl{
  int level;
  int w, h;
  int option;
  int choice = -1;
  
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
      textAlign(CENTER);
      textSize(80);
      text("NEW LEVEL", w/2, h/4);
    popMatrix();
    
    // sword for weapon
    pushMatrix();
      fill(136, 212, 193);
      stroke(154, 232, 213);
      translate(-220, -40);
      rect(w/2 + 5, h/2 - 5, 20, 5);
      rect(w/2, h/2, 30, 5);
      rect(w/2 - 5, h/2 + 5, 40, 5);
      rect(w/2 - 10, h/2 + 10, 40, 5);
      rect(w/2 - 20, h/2 + 15, 40, 5);
      rect(w/2 - 30, h/2 + 20, 40, 5);
      rect(w/2 - 40, h/2 + 25, 40, 5);
      rect(w/2 - 50, h/2 + 30, 40, 5);
      // left handle
      rect(w/2 - 90, h/2 + 25, 10, 5);
      rect(w/2 - 85, h/2 + 30, 20, 5);
      //middle
      rect(w/2 - 65, h/2 + 35, 50, 5);
      rect(w/2 - 70, h/2 + 40, 40, 5);
      rect(w/2 - 70, h/2 + 45, 30, 5);
      rect(w/2 - 70, h/2 + 50, 40, 5);
      rect(w/2 - 55, h/2 + 55, 20, 5);
      rect(w/2 - 50, h/2 + 60, 10, 5);
      // holding part
      rect(w/2 - 85, h/2 + 55, 30, 5);
      rect(w/2 - 95, h/2 + 60, 30, 5);
      rect(w/2 - 100, h/2 + 65, 20, 5);
    popMatrix();
    
      textSize(20);
      textAlign(CENTER);
      text("press 'g' for weapon upgrade", w/4, h/2 + 55);
    
    // heart for health
    pushMatrix();
      translate(260, -30);
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
    popMatrix();
   
      text("press 'h' for health upgrade", w - w/4, h/2 + 55);
  }
}

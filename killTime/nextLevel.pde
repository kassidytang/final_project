class nxtLvl{
  int level;
  int w, h;
  int option;
  
  nxtLvl(int lvl, int widt, int heigh){
    level = lvl;
    w = widt;
    h = heigh;
  }
  
  void draw(){
    rectMode(CENTER);
    
    // option 1
    if (option == 0){
      rect(w/4, h/4, w/4, h/4, 12);
      textSize(10);
      text("weapon upgrade", w/4 + 5, h/4);
    }
    else if (option == 1){
      // option 2
      rect(5* w / 4, h/4, w/4, h/4, 12);
      textSize(10);
      text("health upgrade", w/4 + 5, h/4);
    }
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

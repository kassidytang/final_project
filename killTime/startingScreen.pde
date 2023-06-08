class startScreen{
  int w, h;
  PVector middle;
  
  startScreen(int w, int h){
    this.w = w;
    this.h = h;
    middle = new PVector(w/2 - 30, h/2 - 35);
  }
  
  void draw(){
    background(255, 255, 255);
    stroke(255, 117, 106, 63);
    strokeWeight(20);
    
    for (int i = 0; i < width + 20; i += 40){
      line(i, 0, i, h);
    }
    
    for (int i = 0; i < height + 20; i += 40){
      line(0, i, w, i);
    }
    
    strokeWeight(1);
    avatar p = new avatar(middle);
    p.draw();
    
    // text
    textAlign(CENTER);
    fill(194, 47, 47);
    textSize(50);
    text("Press 'p'", w/2, h/4);
    text("To Start", w/2, h - h/4);
  }
}

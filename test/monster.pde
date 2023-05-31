class monster{
  int dim = 40;
  PVector monPos;
  
  monster(PVector mon){
    monPos = mon;
  }
  
  void draw(){
    // body
    fill(209, 190, 226);
    stroke(192, 168, 214);
    ellipse(monPos.x, monPos.y, dim, dim);
  }
}

class monster{
  int dim = 40;
  color fCol;
  color lCol;
  PVector monPos;
  
  monster(PVector mon, color fillCol, color lineCol){
    monPos = mon;
    fCol = fillCol;
    lCol = lineCol;
  }
  
  void draw(){
    // body
    fill(fCol);
    stroke(lCol);
    ellipse(monPos.x, monPos.y, dim, dim);
  }
}

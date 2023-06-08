class monster{
  int dim;
  int health;
  color fCol;
  color lCol;
  PVector monPos;
  
  monster(PVector mon, int dimension, color fillCol, color lineCol, int heal){
    monPos = mon;
    dim = dimension;
    health = heal;
    fCol = fillCol;
    lCol = lineCol;
  }
  
  void draw(){
    // body
    fill(fCol);
    stroke(lCol);
    ellipse(monPos.x, monPos.y, dim, dim);
    text("H: " + health, monPos.x - 15, monPos.y - dim/2 - 10);
  }
}

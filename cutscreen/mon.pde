class monster{
  int dim;
  int h;
  color fCol;
  color sCol;
  PVector monPos;
  
  monster(PVector mon, int dimension, int health, color fCol, color sCol){
    monPos = mon;
    dim = dimension;
    h = health;
    this.fCol = fCol;
    this.sCol = sCol;
  }
  
  void draw(){
    // arms
    fill(fCol);
    stroke(sCol);
    rect(mPos.x - dim/1.2, mPos.y, dim/2, dim/4);
    rect(mPos.x + dim/2.5, mPos.y, dim/2, dim/4);
    
    // body or clothing
    fill(101, 159, 97);
    stroke(92, 150, 87);
    quad(mPos.x - dim/3.5, mPos.y - dim/6, mPos.x + dim/3.5, mPos.y - dim/6, mPos.x + dim/1.5, mPos.y + dim/2, mPos.x - dim/1.5, mPos.y + dim/2);
    
    // face
    fill(fCol);
    stroke(sCol);
    ellipse(mPos.x, mPos.y - dim/2, dim + dim/2, dim);
    
    //eyes
    fill(255, 255, 255);
    stroke(181, 214, 111);
    ellipse(mPos.x - dim/3, mPos.y - dim/1.2, dim/1.5, dim/1.4);
    ellipse(mPos.x + dim/3, mPos.y - dim/1.2, dim/1.5, dim/1.4);
    fill(113, 113, 113);
    ellipse(mPos.x - dim/2, mPos.y - dim/1.2, dim/4, dim/4);
    ellipse(mPos.x + dim/6, mPos.y - dim/1.2, dim/4, dim/4);
    
    // smile
    stroke(113, 113, 113);
    line(mPos.x - dim/3, mPos.y - dim/4, mPos.x, mPos.y - dim/8);
    line(mPos.x, mPos.y - dim/8, mPos.x + dim/3, mPos.y - dim/4);
    
    textAlign(CENTER);
    text("H: " + h, monPos.x, monPos.y - dim*1.5);
  }
}

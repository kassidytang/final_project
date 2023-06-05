class bg{
  String curTime;
  
  bg(String timeOfDay){
    curTime = timeOfDay;
  }
  
  void draw(){
    if (curTime.equals("day")){
      back(color(215, 255, 250), color(172, 208, 166));
    }
    else if (curTime.equals("sunset")){
      back(color(255, 169, 113), color(218, 232, 164));
    }
    else if (curTime.equals("night")){
      back(color(105, 105, 105), color(110, 139, 89));
    }
  }
  
  void back(color top, color ground){
    background(top);
    fill(ground);
    stroke(ground);
    rect(0, height - height/3, width, height/3);
  }
}

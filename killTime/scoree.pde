class score{
  int kills;
  int pHealth;
  int level;
  
  score(int k, int ph, int l){
    kills = k;
    pHealth = ph;
    level = l;
  }
  
  void draw(){
    fill(96, 78, 35);
    textAlign(LEFT);
    textSize(15);
    text("KILLS: " + kills, 5, height - 5);
    text("PLAYER HEALTH: " + pHealth, 90, height - 5);
    text("LEVEL: " + level, 250, height - 5);
  }
}

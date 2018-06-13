class State_Title extends State {
  Zoog[] zoog;
  int stage;
  
  State_Title(int stage){
    this.stage = stage;
    this.zoog = new Zoog[stage];
  }
 
  void display() {
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect( 0, 0, width, height);
    for (int i=0; i<zoog.length; i++) {
    zoog[i] = new Zoog_Stopping(width * 0.5 + (i+1)/2*80*pow(-1,i%2), height * 0.5);
      zoog[i].display();
    }
    fill(0);
    textSize(36);
    textAlign(CENTER, CENTER);
    text("Zooggame", width * 0.5, height * 0.3);
    textSize(20);
    text("STAGE "+stage, width * 0.5, height * 0.6);
    text("Press [SPACE] to start", width * 0.5, height * 0.7);
    text("Press [S] to setumei", width * 0.5, height * 0.8);
  }

  State next() {
    if (keyPressed && key == ' ') {
      return new State_Game(30, stage, 60, 10);
    }
      if(keyPressed && key == 's') {
    return new Description(stage);
  }
    return this;
  }
}

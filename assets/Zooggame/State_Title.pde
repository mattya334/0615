class State_Title extends State {
  Zoog[] zoog;
  int n;
  
  State_Title(int n){
    this.n = n;
    this.zoog = new Zoog[n];
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
    text("STAGE "+n, width * 0.5, height * 0.6);
    text("Press [SPACE] to start", width * 0.5, height * 0.7);
  }

  State next() {
    if (keyPressed && key == ' ') {
      return new State_Game(30, n*8, 60, 10);
    }
    return this;
  }
}
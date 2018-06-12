class State_Game extends State {
  Zoog[] zoog;
  Board board;
  Time time;
  Count count;
  int t_limit;
  int t_remain;
  int stage;
  boolean isdead;
  
  State_Game(int t_limit, int stage, int w, int h) {
    this.t_limit = t_limit;
    this.zoog = new Zoog[stage*6]; 
    for (int i=0; i<zoog.length; i++)
      zoog[i] = new Zoog_Bouncing((int)random(width), (int)random(-800*(1+0.01*stage),0));
    board = new Board(w, h);
    count = new Count(zoog);
    this.stage = stage;
  }

  void display() {
    background(128);
    for (int i=0; i<zoog.length; i++) {
      zoog[i].display();
      zoog[i].move();
    }

    if (mousePressed)
      for (int i=0; i<zoog.length; i++)
        zoog[i].crush(mouseX, mouseY);

    board.display();
    board.move();

    count.display();

    t_remain  = int(t_limit - t_state);
    time = new Time(t_limit, t_remain);
    time.display();
  }

  State next() {
    isdead = false;
    for (int i=0; i<zoog.length; i++) {
      if ( !zoog[i].isDead() ) {
        isdead = false; 
        break;
      } else isdead = true;
    }
    if (isdead) return new State_End_Youwon(stage);
    else if ( !isdead && t_remain<=0 ) return new State_End_Timesup();
    return this;
  }
}
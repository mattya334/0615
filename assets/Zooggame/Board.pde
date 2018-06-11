class Board {
  float x, y, w, h;

  Board(float w, float h) {
    x = width * 0.5;
    y = height-30;
    this.w = w;
    this.h = h;
  }

  void display() {
    stroke(0);
    fill(255);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  
  void move() {
    x = mouseX;
  }

}
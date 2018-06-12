abstract class Zoog {
  float x, y, w, h, eye;
  int x_d, y_d;
  boolean eye_l = false, eye_r = false;
    Zoog(float x, float y) {
    this.x = x;
    this.y = y;
    w = 60; h = 60; eye = 16;
  }

  abstract void move();

  void display() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(150);
    rect(x, y, w/3, h*5/3); // body
    stroke(0);
    fill(255);
    ellipse(x, y-h/2, w, h); // head
    noStroke();
    fill(255);
    ellipse(x-w/3+1, y-h/2, eye, eye*2); // left eye
    ellipse(x+w/3-1, y-h/2, eye, eye*2); // right eye
    stroke(0);
    line(x-w/6, y+h*5/6, x-w/3, y+h); // left leg
    line(x+w/6, y+h*5/6, x+w/3, y+h); // right leg
    
    if ( !eye_l ) {
      fill(0);
      ellipse(x-w/3+1, y-h/2, eye, eye*2);
    }
    if ( !eye_r ) {
      fill(0);
      ellipse(x+w/3-1, y-h/2, eye, eye*2);
    }
  }

  void hit(int hx, int hy) {
    if (sq(hx - (x-19))/(8*8) + sq(hy - (y-30))/(16*16) < 1)
      eye_l = true;
    if (sq(hx - (x+19))/(8*8) + sq(hy - (y-30))/(16*16) < 1)
      eye_r = true;
  }
  
  boolean isDead() {
    return (eye_l && eye_r);
  }
}
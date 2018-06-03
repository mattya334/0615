abstract class Zoog{
  int x, y;
  boolean isLeftEyeBroken = false;
  boolean isRightEyeBroken = false;
  
  Zoog(int x0, int y0){
    x = x0;
    y = y0;
  }
  
  abstract void move();
  
  void display(){
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(175);
    rect(x, y, 20, 100);
    stroke(0);
    fill(255);
    ellipse(x, y-30, 60, 60);
    noStroke();
    fill(255);
    ellipse(x-19, y-30, 16, 32);
    ellipse(x+19, y-30, 16, 32);
    if( isLeftEyeBroken == false ) {
      fill(0);
      ellipse(x-19, y-30, 16, 32);
    }
    if( isRightEyeBroken == false ) {
      fill(0);
      ellipse(x+19, y-30, 16, 32);
    }
    stroke(0);
    line(x-10, y+50, x-20, y+60);
    line(x+10, y+50, x+20, y+60);
  }
  
  void hit(int hx, int hy){
    if(sq(hx - (x-19))/(8*8) + sq(hy - (y-30))/(16*16) < 1)
      isLeftEyeBroken = true;
    if(sq(hx - (x+19))/(8*8) + sq(hy - (y-30))/(16*16) < 1)
      isRightEyeBroken = true;
  }
  
  boolean isDead(){
    return (isLeftEyeBroken == true && isRightEyeBroken == true);
  }
  
}
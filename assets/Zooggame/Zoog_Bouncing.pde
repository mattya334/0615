class Zoog_Bouncing extends Zoog {
  int x_d = ((int)random(2)*2-1), y_d = 1;
  float speed = 1;
  
  Zoog_Bouncing(float x, float y) {
    super(x, y);
  }

  void move() {
    x += x_d * speed;
    y += y_d * speed;
    
    if ( x>width || x<0 ) x_d *= -1;    //Bounce SideWall
    //if( y>height || y<0 ) y_d *= -1;  //Bounce Top and Bottom Wall
  
    if ( x<mouseX+60 && x>mouseX-60 && y== height-30 ) { 
      y_d *= -1;                        //Bounce on Board
    }
  }
  
}
  
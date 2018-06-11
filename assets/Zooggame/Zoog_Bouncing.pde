class Zoog_Bouncing extends Zoog {
  int x_d = ((int)random(2)*2-1), y_d = 1;
  float speed = 1;

  Zoog_Bouncing(float x, float y) {
    super(x, y);
  }

  void move() {
    x += x_d * speed;
    y += y_d * speed;

    if ( x>width || x<0 ) x_d *= -1;
    //if( y>height || y<0 ) y_d *= -1;
    //if ( x==board.x && y==board.y ) { 
      //x_d *=-1; 
      //y_d *= -1;
    //}
  }
  
  //void collision(){
  //  if(bar x
  //}
}
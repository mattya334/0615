class NormalZoog extends Zoog{
  int direction = ((int)random(2)*2-1), x_d = direction, y_d = direction;
  int speed = 2;
  
  NormalZoog(int x0, int y0){
    super(x0,y0);
  }
  
  void move(){
    x += x_d * speed;
    y += y_d * speed;
    
    if( x>width || x<0 )  x_d *= -1;
    if( y>height || y<0 ) y_d *= -1;
  }

}
class SmartZoog extends Zoog{
  
  SmartZoog(int x0, int y0){
    super(x0,y0);
  }
  
  void move(){
      float d = dist(x, y, mouseX, mouseY);
      if( d < 20 ){
          x += ((int)random(2)*2-1)*100;
          y += ((int)random(2)*2-1)*100;
      }
      x = constrain(x, 0, width);
      y = constrain(y, 0, height);
  }
  
}
class Paddle
{
  float x, y;
  Paddle()
  {
    x = width / 2;
    y = height - 30;
  }
   
  void setLocation(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
   
  void display()
  {
    stroke(0);
    fill(0, 0, 200);
    rect(x, y, 80, 10);
  }
   

}
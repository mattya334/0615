void setup(){  
  size(600, 400);
  frameRate(20);

  Time time       = new Time(30);
  Count count     = new Count();
  Message message = new Message();;
  Zoog[] zoog     = new Zoog[3];

  for(int i=0; i<zoog.length; i++){ zoog[i] = new Zoog(); }
  zoog[0] = new NormalZoog(200, 200);
  zoog[1] = new StoppingZoog(300, 200);
  zoog[2] = new SmartZoog(400, 200);
}

void draw(){
  background(128);
  zoog[0].display();
  zoog[1].display();
  zoog[2].display();
  time.display();
  zoog[0].move();
  zoog[1].move();
  zoog[2].move();
  if(zoog[0].isDead()&&zoog[1].isDead()&&zoog[2].isDead() ){
    message.YouWon();
  }
  if(time.remain<0){
    message.Timesup();
  }

}

void mouseClicked(){
  zoog[0].hit(mouseX, mouseY); 
  zoog[1].hit(mouseX, mouseY); 
  zoog[2].hit(mouseX, mouseY); 
}
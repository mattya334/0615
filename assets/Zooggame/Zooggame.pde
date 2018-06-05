Time time       = new Time(30);
Count count     = new Count();
Message message = new Message();
Zoog[] zoog = new Zoog[8];

void setup(){  
  size(600, 600);
  frameRate(20);

  for(int i=0; i<zoog.length; i++){
    int num = i % 2;
    switch(num){
    case 0:
    zoog[i] = new NormalZoog((int)random(600), (int)random(600)); break;
    case 1:
    zoog[i] = new SmartZoog((int)random(600), (int)random(600)); break;
    }
  }
  
}

void draw(){
  background(128);
  time.display();
  count.display();
  for(int i=0; i<zoog.length; i++){ 
    zoog[i].display();  
    zoog[i].move();
  }
  
  boolean flag=false;
  for(int i=0; i<zoog.length; i++){
    if(!(zoog[i].isDead())){ flag = false; break;}
    else flag = true;
  }
  if(flag) message.YouWon();
  else if(!(flag) && time.remain<0) message.Timesup();
  else {}

}

void mouseClicked(){
 for(int i=0; i<zoog.length; i++)
   zoog[i].hit(mouseX, mouseY); 
}
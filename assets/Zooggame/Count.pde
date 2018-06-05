class Count{
  int count, total, remain;
  String sremain = str(remain);
  
  void display(){
  count = 0;
  for(int i=0; i<zoog.length; i++) if(zoog[i].isDead()) count++;
  total = zoog.length;
  remain = total - count;
  sremain = str(remain);
  textSize(80);
  fill(#00ff00);
  textAlign(RIGHT, TOP);
  text(sremain+"/"+total, width, 0);
  } 
}
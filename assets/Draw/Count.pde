class Count{
  int count=0, total=Draw.zoog.length;
  int remain = total - count;
  String sremain = str(remain);
  
  for(int i=0; i<Draw.zoog.length; i++){
    if(Draw.zoog[i].isDead()) count++;
  }
  
  textSize(30);
  fill(#ff00ff);
  textAlign(TOP,CENTER);
  text(sremain, width-30, 10);
}
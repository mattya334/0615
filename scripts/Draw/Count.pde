class Count{
  int count=0, total=Draw.zoog.length;
  int remain = total - count;
  String sremain = str(remain);
  
  void count(){
    for(int i=0; i<zoog.length; i++){
      if(zoog[i].isDead()) count++;
    }
  }
  
  void display(){
  textSize(30);
  fill(#ff00ff);
  textAlign(TOP,CENTER);
  text(sremain, width-30, 10);
  }
  
}
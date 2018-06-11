class Count {
  int count, remain;
  Zoog[] zoog;
  
  Count(Zoog[] zoog){
    this.zoog = zoog;
  }
  
  void display() {
    count = 0;
    for (int i=0; i<zoog.length; i++) if (zoog[i].isDead()) count++;
    remain = zoog.length - count;
    textSize(80);
    fill(#00ff00);
    textAlign(RIGHT, TOP);
    text(remain+"/"+zoog.length, width, 0); 
  }
}
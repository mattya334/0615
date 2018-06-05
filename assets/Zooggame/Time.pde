class Time{
  int limits, remain;
  String sremain;
  
  Time(int limits0){
    limits = limits0;
  }

  void display(){
    remain = limits - int(millis()*pow(10, -3));
    sremain = str(remain);
    textSize(80);
    fill(#ffa500);
    textAlign(LEFT,TOP);
    text(sremain+"/"+limits+"sec", 0, 0);
    if(remain <= 5) fill( random(255), random(255), random(255) );
    text(sremain, 0, 0);
  }

}
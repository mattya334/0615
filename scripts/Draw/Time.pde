class Time{
  int limits, remain;
  String sremain;
  
  Time(int limits0){
    limits = limits0;
  }

  void display(){
    remain = limits - int(millis()*pow(10, -3));
    sremain = str(remain);
    textSize(33);
    fill(#ffa500);
    textAlign(TOP,CENTER);
    text(sremain, 10, 10);
  }

}
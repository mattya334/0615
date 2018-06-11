class Time {
  int t_limit, t_remain;

  Time(int t_limit, int t_remain) {
    this.t_limit = t_limit;
    this.t_remain = t_remain;
  }

  void display() {
    textSize(80);
    fill(#ffa500);
    textAlign(LEFT, TOP);
    text(t_remain+"/"+t_limit+"sec.", 0, 0);
    if (t_remain <= 5) fill( random(255), random(255), random(255) );
    text(t_remain, 0, 0);
  }
}
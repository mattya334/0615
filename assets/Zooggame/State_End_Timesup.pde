class State_End_Timesup extends State {

  void display() {
    background(255);
    textSize(36);
    fill(#0000ff);
    textAlign(CENTER, CENTER);
    text("Time's up...", width*0.5, height*0.5);
    if (t_state > 2)
      textSize(20);
      fill(0);
      text("Press [R] to return to the title.", width * 0.5, height * 0.6);
  }

  State next() {
    if (t_state > 3 && keyPressed && key == 'r') {
      return new State_Title(1);
    }
    return this;
  }
}
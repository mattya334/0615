class Description extends State{
  int stage;
  Description(int stage){
    this.stage = stage;
  }

  void display(){
    background(255);
    PFont font = createFont("MS Gothic",48,true);
    textFont (font);
  
    fill(0);
    textSize(36);
    textAlign(CENTER, CENTER);
    text("Zooggame", width * 0.5, height * 0.3);
    textSize(20);
    text("Zoogの目をつぶしてください。Zoogを跳ね返すと残り時間が増えます。", width * 0.5, height * 0.7);
    text("Press [B] to Title", width * 0.5, height * 0.9);
  }
  
  State next() {
    if (keyPressed && key == 'b') {
      return new State_Title(stage);
    }
    return this;
  }
}
  

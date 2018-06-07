class Message{

  void YouWon(){
      noStroke();
      fill(255,255,255);
      rectMode(CORNER);
      rect( 0, 0, width, height);
      textSize(36);
      fill(#ff0000);
      textAlign(CENTER, CENTER);
      text("You won!", width/2.0, height/2.0);
  }

  void Timesup(){
      noStroke();
      fill( 255, 255, 255 );
      rectMode(CORNER);
      rect( 0, 0, width, height);
      textSize(32);
      fill(#0000ff);
      textAlign(CENTER, CENTER);
      text("Time's up...", width/2.0, height/2.0);
      noLoop();
  }
}

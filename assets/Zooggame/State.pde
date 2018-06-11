abstract class State {
  float t_point;
  float t_state;
  
  State() {
    t_point = millis();
  }
  
  State load() {
    t_state = ( millis() - t_point ) / 1000.0;
    display();
    return next();
  }

  abstract void display();
  abstract State next();
}
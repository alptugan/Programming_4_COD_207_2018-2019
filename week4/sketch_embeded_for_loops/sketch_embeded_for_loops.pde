void setup() {
  size(500, 150);
  background(255);
}

void draw() {
  strokeWeight(8);
  /*line(20, 40, 80, 80);
  line(80, 40, 140, 80);
  line(140, 40, 200, 80);
  line(200, 40, 260, 80);
  line(260, 40, 320, 80);
  line(320, 40, 380, 80);
  line(380, 40, 440, 80);*/
  
  for(int i = 0; i < 7; i = i + 1) {
    //println(i);
    int mult = (60*i);
    line(20 + mult, 40, 80 + mult , 80);
  }
}

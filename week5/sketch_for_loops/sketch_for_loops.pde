void setup() {
  size(600, 600);
  background(0);
  smooth();
  noStroke();
}

void draw() {
  background(0);
  for (int y = 0; y <= height; y = y + 40) {
    for (int x = 0; x <= width; x = x + 40) {
      fill(255, 140);
      ellipse(x, y, 40, 40);
    }
  }
  

}

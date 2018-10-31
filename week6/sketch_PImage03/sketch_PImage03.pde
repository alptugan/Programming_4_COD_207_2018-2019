PImage test;

void setup() {
  size(600, 600);
  test = loadImage("imaj.jpg");
}

void draw() {
  //background(255);
  image(test, mouseX, mouseY, 50, 50);
}

void keyPressed() {
}

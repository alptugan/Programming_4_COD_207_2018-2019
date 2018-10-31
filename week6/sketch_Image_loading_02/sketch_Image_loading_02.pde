PImage test;
float aspectRatio;

void setup() {
  size(800, 600);

  test = loadImage("imaj2.png");
  aspectRatio = float(test.width) / float(test.height);
 //println(aspectRatio);
  
}


void draw() {

  background(255);

  image(test, 0, 0, width*aspectRatio, height);
}

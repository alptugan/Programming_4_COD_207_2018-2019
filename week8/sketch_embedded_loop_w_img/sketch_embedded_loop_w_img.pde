PImage p;
import controlP5.*;

PImage img;
float w;
float h;


float tt;
float angle;
float rot;

// Declare controlp5 lib.
ControlP5 cp5; 
void setup() {
  //fullScreen();
  size(1200, 900);
  background(0);
  smooth();
  noStroke();

  p = loadImage("pat.jpg");
  
  w = p.width;
  h = p.height;
  
  cp5 = new ControlP5(this);
  cp5.addSlider("w")
    .setPosition(20, 20)
    .setRange(0, 1000)
    .setSize(150, 20);

  cp5.addSlider("h")
    .setPosition(20, 20 + 21)
    .setRange(0, 1000)
    .setSize(150, 20);
}

void draw() {
  background(0);
  
  angle = abs(sin(millis()*0.0007)*300);
  w = angle;
  
  for (int y = 0; y <= height; y += w) {
    for (int x = 0; x <= width; x += h) {
      fill(255, 140);
      // ellipse(x, y, 40, 40);
      //rect(x, y, 20, 20);
      imageMode(CENTER);
      image(p, x, y, w, h);
    }
  }
}

void keyPressed() {

  if (key == 's') {
    saveFrame("myWallpaper-######.png");
  }
}

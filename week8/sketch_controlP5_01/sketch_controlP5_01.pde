import controlP5.*;

PImage img;
int r;
int g;
int b;
int a;

float tt;
float angle;
float rot;

// Declare controlp5 lib.
ControlP5 cp5; 

void setup() {
  size(800, 600);

  img = loadImage("woods.jpg");

  r =255;
  g =255;
  b =255;
  a =255;

  tt = 0.;

  cp5 = new ControlP5(this);
  cp5.addSlider("r")
    .setPosition(20, 20)
    .setRange(0, 255)
    .setSize(150, 20);

  cp5.addSlider("g")
    .setPosition(20, 20 + 21)
    .setRange(0, 255)
    .setSize(150, 20);

  cp5.addSlider("b")
    .setPosition(20, 20 + 21*2)
    .setRange(0, 255)
    .setSize(150, 20);

  cp5.addSlider("a")
    .setPosition(20, 20 + 21*3)
    .setRange(0, 255)
    .setSize(150, 20);

  cp5.addSlider("angle")
    .setPosition(20, 20 + 21*4)
    .setRange(0, 360)
    .setSize(150, 20);

  cp5.addToggle("tt")
    .setPosition(20, 25  + 21*5 )
    .setSize(20, 20)
    .setValue(1);
}


void draw() {
  background(150);

  if (tt == 1.0) {
    pushMatrix();
    translate(img.width/2,img.height/2);
    imageMode(CENTER);
    rotate(radians(angle));
    tint(r, g, b, a);
    image(img, 0, 0);
    popMatrix();
    
    pushMatrix();
    translate(img.width + img.width/2,img.height/2);
    imageMode(CENTER);
    rotate(radians(angle));
    tint(r, g, b, a);
    image(img, 0, 0);
    popMatrix();
    
    
  }
}

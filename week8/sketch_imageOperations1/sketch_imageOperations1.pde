import controlP5.*;
int r;
int g;
int b;
int a;

float rot;

float isDrawImg;

PImage testImg;

// DEclare controlP5
ControlP5 cp5;

void setup() {
  size(800, 600);

  r = 200;
  // initialize controlP5
  cp5 = new ControlP5(this);

  // create slider for red color channel
  cp5.addSlider("r")
    .setRange(0, 255)
    .setPosition(100, 100)
    .setSize(150, 20)
    .setValue(255);

  cp5.addSlider("g")
    .setRange(0, 255)
    .setPosition(100, 100 + 22)
    .setSize(150, 20)
    .setValue(255);

  cp5.addSlider("b")
    .setRange(0, 255)
    .setPosition(100, 100 + 22 *2)
    .setSize(150, 20)
    .setValue(255);


  cp5.addSlider("rot")
    .setRange(0, 360)
    .setPosition(100, 100 + 22 * 4)
    .setSize(150, 20)
    .setValue(0);


  cp5.addSlider("a")
    .setRange(0, 255)
    .setPosition(100, 100 + 22 * 3)
    .setSize(150, 20)
    .setValue(255);

  // Toggle Button to show/hide the image
  cp5.addToggle("isDrawImg")
    .setPosition(100, 60)
    .setSize(20, 20)
    .setValue(0.0);

  // Load Image
  testImg = loadImage("test.jpg");
}

void draw() {

  background(255);
  //println(isDrawImg);
  if (isDrawImg == 1.0) {
    tint(r, g, b, a);
    pushMatrix();
    translate(testImg.width*0.5, testImg.height*0.5);
    rotate(radians(rot));
    image(testImg, -testImg.width*0.5, -testImg.height*0.5);
    popMatrix();
  }
}

int rW = 134; // width of the rectangle
int rH = 100; // height of the rectangle

int eW = 100;
int eH = 100;

void setup() {  
  size(800, 600);
  background(255, 255, 255);
}



void draw() {
  background(255);
  noStroke();
  // set color
  fill(0);
  // draw ellipse
  ellipse(width*0.5, height*0.5, eW, eH);

  stroke(#000000);
  strokeWeight(4.3);
  // set color
  fill(255, 0, 0, 150);
  // Draw rectangle
  rect(mouseX, mouseY, rW, rH);
}

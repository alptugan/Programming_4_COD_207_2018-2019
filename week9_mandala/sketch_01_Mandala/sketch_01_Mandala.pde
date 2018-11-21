int anglestep = 30;  // set angle

void setup() {
  size(800, 800); // set window size
  background(0);  // set background color
  
  drawTemplate();
}

void drawTemplate() {
  
}


void draw() {
  // start - refrence lines
  stroke(255, 100);  // set stroke color to white and set its opecity to 100
  pushMatrix();  
  translate(width * 0.5, height *0.5);  // move each line to center
  for (int i = 0; i < 360; i += anglestep) {
    rotate(radians(anglestep));
    line(0, 0, width, 0);
  }
  popMatrix();
  // end - reference lines

  if (mousePressed) {
    stroke(255, 255, 255, 255);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
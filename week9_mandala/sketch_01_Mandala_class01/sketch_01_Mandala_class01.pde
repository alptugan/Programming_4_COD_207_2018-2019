int anglestep = 30;  // set angle

void setup() {
  size(800, 800); // set window size
  background(0);  // set background color

  drawTemplate(); // draw template lines just for once
}

void drawTemplate() {
  background(0);  // set background color

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
}


void draw() {
  if (mousePressed) { // whenever mouse is pressed start to draw line
    stroke(255, 255, 255, 255); // set stroke to white color with full opacity
    pushMatrix();  
    translate(width * 0.5, height *0.5);  // move each line to center
    for (int i = 0; i < 360; i += anglestep) {
      rotate(radians(anglestep)); // rotate each line according to radian anglestep value
      line(pmouseX-width*0.5, pmouseY-height*0.5, mouseX-width*0.5, mouseY-height*0.5); // draw line between previous and current mouse positions
      //line(-(pmouseX-width*0.5), pmouseY-height*0.5, -(mouseX-width*0.5), mouseY-height*0.5); // draw line between previous and current mouse positions
      line(pmouseX-width*0.5, -(pmouseY-height*0.5), mouseX-width*0.5, -(mouseY-height*0.5)); // draw line between previous and current mouse positions
      noFill();
      ellipse(mouseX,mouseY,15,15);
  }
    popMatrix();
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    drawTemplate();
  }
}
import processing.pdf.*;

float angle = 30;
float numSection;

float isRecording = 0;

void setup() {
  size(600, 600);

  background(0);

  // calculate numSection
  numSection = 360 / angle;

  // Draw reference lines and clear canvas
  clearCanvas();
}

void clearCanvas() {
  // clear backgorund wih black color
  background(0);
  
  //  draw reference lines
  pushMatrix();
  translate(width*0.5, height*0.5);
  for (int i = 0; i < numSection; i = i + 1) {
    stroke(150);
    rotate(radians(angle));
    line(0, 0, width, 0);
  }
  popMatrix();
}

void draw() {
  
  
  // set line color
  if (mousePressed == true) {
    stroke(255);
    //line(pmouseX, pmouseY, mouseX, mouseY);
    pushMatrix();
    translate(width*0.5, height*0.5);
    for (int i = 0; i < numSection; i = i + 1) {
      
      stroke(255);
      rotate(radians(angle));
      
      float px = pmouseX - width*0.5;
      float py = pmouseY - height*0.5;
      float x = mouseX - width*0.5;
      float y = mouseY - height*0.5;
      
      line(px, py, x, y);
    }
    popMatrix();
  }

}

void keyPressed() {
  if (key == 'd' || key == 'D') {
    clearCanvas();
  }
  
  if (key == 's' || key == 'S') {
    beginRecord(PDF, "muhtesem4.ai"); 
    background(0);
    isRecording = 1;
  }
  
  if(key == 'e') {
    endRecord(); 
  }
}

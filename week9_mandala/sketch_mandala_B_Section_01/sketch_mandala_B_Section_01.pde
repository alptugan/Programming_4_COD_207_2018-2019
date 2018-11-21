import processing.pdf.*;

int fileId;
float numSections = 20;
float angle;

void setup() {
  size(600, 600);

  angle = 360 / numSections;
  clearCanvas();
}

void clearCanvas() {
  background(255);
  pushMatrix();
  translate(width*0.5, height*0.5);
  for (int i = 0; i < numSections; i = i + 1) {
    stroke(0, 0, 0, 50);
    rotate(radians(angle));
    line(0, 0, width, 0);
  }
  popMatrix();
}

void draw() {

  if (mousePressed == true) {
    stroke(0, 0, 0, 255);
    //
    pushMatrix();
    translate(width*0.5, height*0.5);
    for (int i = 0; i < numSections; i = i + 1) {
      stroke(0, 0, 0, 255);
      rotate(radians(angle));

      float px = pmouseX - width*0.5;
      float py = pmouseY - height*0.5;
      float x = mouseX - width*0.5;
      float y = mouseY - height*0.5;

      //line(px, py, x, y);
      //float mp = dist(mouseX,mouseY,pmouseX,pmouseY);
      //float mpd = map(mp,0,50,3,30);
      //fill(255,255,255,0);
      //ellipse(x,y,60,60);
      line(px, py, x, y);
      rect(x,y,10,10);
    }
    popMatrix();
  }
}

void keyPressed() {

  if (key == 'c') {
    clearCanvas();
  }

  if (key == 'r') {
    fileId = fileId + 1;
    beginRecord(PDF, "mandala"+ str(fileId) +".ai");
  }

  if (key == 'e') {
    endRecord();
    println("done recording");
  }
}

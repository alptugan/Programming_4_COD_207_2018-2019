int hW = 130;
int hH = 160;
int hRad = 30;

// eye vars
int eSize = 30;
int e1X   = 262;
int e2X   = 337;
int eY    = 284;
void setup() {

  //set wind    ow size
  size(600, 600);
}

void draw() {
  // refresh background
  background(255);
  println(mouseX,mouseY);

  // draw rounded rect
  rect(width*0.5 - hW*0.5, height*0.5 - hH*0.5, hW, hH, hRad, hRad, 0, 0);
  
  // draw eyes
  // left eye
  ellipse(e1X, eY, eSize, eSize);

  // draw eyes
  // right eye
  ellipse(e2X, eY, eSize, eSize);


}

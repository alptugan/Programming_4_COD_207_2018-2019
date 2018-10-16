int xp = 100;
int yp = 100;

void setup() {
  size(600, 600);
  background(255);
}


void draw() {


  //ellipse(mouseX, mouseY, 30 ,30);

  //println(weight);

  if (mousePressed == true) {
    float w = dist(pmouseX,pmouseY,mouseX,mouseY);
    stroke(0,40+255/w);
    strokeWeight(w);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

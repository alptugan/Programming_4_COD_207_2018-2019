int xp = 100;
int yp = 100;

void setup() {
  size(600,600);
  background(255);
}


void draw() {
  
  fill(0,0,0,120);
  //ellipse(mouseX, mouseY, 30 ,30);
  if(mousePressed == true) {
    line(pmouseX,pmouseY, mouseX,mouseY);
  }
  
}

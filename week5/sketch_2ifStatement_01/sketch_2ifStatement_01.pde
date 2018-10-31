int xpos;

void setup() {
  size(600, 600);
  smooth();
  strokeWeight(30);
}
void draw() {
  background(204);
  
  xpos = mouseX;
  
  if(xpos > 200) {
    xpos = 200;
  }else{
    
  }
  strokeWeight(1);
  stroke(255,0,0);
  line(200,0,200,height);
  
  strokeWeight(30);
  stroke(0);
  ellipse(xpos, height*0.5, 40, 40);
  
  /*stroke(102);
  line(40, 0, 70, height);
  if (mousePressed) {
    background(0);
    if (mouseButton == LEFT) {
      stroke(255);
    } else {
      stroke(0);
    }
    line(0, 70, width, 50);
  }*/
}

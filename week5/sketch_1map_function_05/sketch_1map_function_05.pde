float mappedVal;
float mappedValY;
float mappedCobined;

void setup() {
 size(600,600); 
}

void draw() {
  
  mappedVal = map(mouseX, 0, width, 0, 255);
  
  background(mappedVal, 0,0);
  
  fill(150);
  textSize(32);
  text("actual mouse x pos: " + mouseX, 20, 40);
  
  fill(255);
  textSize(32);
  text("mapped mouse x pos: " + mappedVal, 20, 80);
  
  
}

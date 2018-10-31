float mappedVal;
float mappedValY;
float mappedCobined;

void setup() {
 size(600,600); 
}

void draw() {
  // map the mouseX value in to 0 - 255
  mappedVal = map(mouseX,0,width,0,255);
  mappedValY = map(mouseY,0,height,0,255);
  mappedCobined = map((mouseX*255/(mouseY+1)),0,width,0,255);
  
  // Change the Red and Green parameter of the background
  background(mappedVal, mappedValY,mappedCobined);
  
  // write the mapped value text on canvas
  fill(255);
  text("mapped Value X: " + mappedVal, 20, 20);
  
  // write the actual value of the mouseX
  fill(120);
  text("Actual Value X: " + mouseX, 20, 40);
  
    // write the mapped value text on canvas
  fill(255);
  text("mapped Value Y: " + mappedValY, 20, 80);
  
  // write the actual value of the mouseX
  fill(120);
  text("Actual Value Y: " + mouseY, 20, 100);
  
    // write the mapped value text on canvas
  fill(255);
  text("mapped Value Cobined: " + mappedCobined, 20, 120);
  
  // write the actual value of the mouseX
  fill(120);
  text("Actual Value Cobined: " + (mouseX*255/(mouseY+1)), 20, 140);
}

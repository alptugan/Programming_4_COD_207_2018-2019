float mappedVal;
float mappedValY;
float mappedCobined;
float sinAnimVal;
float cosAnimVal;

float mappedYPosEllipse;
float mappedYXPosEllipse;

float wEllipse = 20;
float hEllipse = 20;

void setup() {
 size(600,600); 
}

void draw() {
  // map the mouseX value in to 0 - 255
  mappedVal = map(mouseX,0,width,0,1);
  mappedValY = map(mouseY,0,height,0,255);
  //mappedCobined = map((mouseX*255/(mouseY+1)),0,width,0,255);
  
  // Create an animation with sine function
  sinAnimVal = sin(millis()*0.002 + mappedVal);
  cosAnimVal = cos(millis()*0.002);
  mappedCobined = map(sinAnimVal, -1, 1, 0 ,255);
  
  // Change the Red and Green parameter of the background
  //background(mappedVal, mappedValY,mappedCobined);
  
  // Calculate Y pos
  mappedYPosEllipse = map(sinAnimVal,-1,1,100,height-100);
  mappedYXPosEllipse= map(cosAnimVal,-1,1,100,width-100);
  // ellipse
  fill(0);
  ellipse(mappedYXPosEllipse, mappedYPosEllipse, wEllipse, hEllipse);
  fill(255,10);
  rect(0,0,width,height);
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

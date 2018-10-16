float xp = 0;
float yp = 0;
int w  = 60;
int h  = 60;

float rotVal = 0;
float scaleFac = 2;
float scaleFac2 = 10;

void setup() {

  size(600,600);
  xp = width / 2;
  yp = height * 0.5;
  
}


void draw() {
  background(255);
  
  // Example code to understand pushmatrix and popmatrix
  /*pushMatrix();
  translate(100,100);
  rect(0,0,40,40);
  popMatrix();
  
  rect(0,0,40,40);
  */
  //
  // draw rect
    
  scaleFac = 2 + sin(millis()*0.002);
  scaleFac2 = 3 + cos(millis()*0.0023);
  pushMatrix();
  translate(xp,yp);
  
  rotate(radians(rotVal*0.1));
  fill(scaleFac*50,0,scaleFac*220);
  rect(-w*0.5*scaleFac2,-h*0.5*scaleFac2,w*scaleFac2,h*scaleFac2);
   
  rotate(radians(rotVal));
  fill(scaleFac*100,scaleFac*200,0);
  rect(-w*0.5*scaleFac,-h*0.5*scaleFac,w*scaleFac,h*scaleFac);
  
  popMatrix();
  
  
  // Set rotation value
  rotVal = rotVal + 0.88;
}

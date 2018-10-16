float rotVal = 0;
float size;


void setup() {

  //set window size
  size(600, 600);
}

void draw() {
  background(255);
 
   // define  sine algorithm
   size = sin(millis()*0.001)*3;
  //println(size);
  translate(width/2, height/2);
  rotate(radians(rotVal));
  scale(size,size);
  rect(-26, -26, 52, 52);
  rotate(radians(rotVal+5));
  rect(-26, -26, 52, 52);
  rotate(radians(rotVal+15));
  rect(-26, -26, 52, 52);
  
  
  rotVal = rotVal + 2.5;
}

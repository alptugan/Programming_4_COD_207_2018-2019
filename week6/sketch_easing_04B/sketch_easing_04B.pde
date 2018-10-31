// Move from destination point to target point with acceleration
float x;
float y;
float easing = 0.08;
float diameter = 32;
          
void setup() {
  size(820, 820);
  smooth();      
}
          
void draw() {
  //background(0);
  float targetX = mouseX;
  float targetY = mouseY;
  x += (targetX - x) * (easing);
  y += (targetY - y) * (easing);
 
  ellipse(x, y, diameter, diameter);
} 

void keyPressed() {
 background(255); 
}

String s;
float a,b,c;

void setup() {
  size(400,160);
  a = 5.3;
  b = 0.5;
  c = a * b;
}

void draw() {
  background(255);
  
  for(int i = 0; i <= 400; i = i + 40){
    rectMode(CENTER);
    if(i % 2 == 0) {
      ellipse(i,20,40,40);
    }
    
    if(i % 4 == 0) {
      rect(i,60,40,40);
    }
    
    if(i % 2 == 0 && i % 4 == 0) {
      rect(i,100,40,40);
      ellipse(i,140,40,40);
    }
  }
}

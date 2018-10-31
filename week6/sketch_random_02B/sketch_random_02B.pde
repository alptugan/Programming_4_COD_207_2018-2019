

void setup() {
  size(600,600);
  
}

void draw() {
  //background(255);
  float x = random(0,width);
  float y = random(0,height);
  
  float w = random(5,width);
  float h = random(5,height);
  
  noStroke();
  fill(random(0,255),random(0,255),random(0,255),random(0,255));
  rect(x,y,w,h);

}

void keyPressed() {
 if(key == 'd') {
  background(255); 
 }
}

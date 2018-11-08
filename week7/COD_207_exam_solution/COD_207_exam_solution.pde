int a = 3;
int b = 5;
int c;

void setup() {
  size(800,600);
  c = a + b;
  println(c);
}

void draw() {
  background(255);
  
  fill(0);
  textAlign(CENTER);
  textSize(42);
  text(c,width*0.5,height*0.5);
}

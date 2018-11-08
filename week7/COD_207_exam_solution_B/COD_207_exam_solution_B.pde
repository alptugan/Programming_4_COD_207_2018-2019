String s;
float a,b,c;

void setup() {
  size(800,800);
  a = 5.3;
  b = 0.5;
  c = a * b;
}

void draw() {
  background(255);
  
  if(c > 5.0) {
    s = "YES";
  }else{
    s = "NO";
  }
  
  fill(0);
  textSize(64);
  text(s, 100, 100);
}

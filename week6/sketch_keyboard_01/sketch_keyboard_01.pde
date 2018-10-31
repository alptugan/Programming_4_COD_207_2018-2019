String keyInput="Hello, start to type!";
color bgCl = color(255,255,255);

void setup() { 
  size(600,600);
}


void draw() {
  background(bgCl);
  
  fill(0);
  textSize(48);
  textAlign(CENTER);
  text(keyInput,width*0.5,height*0.5);
}

void keyPressed() {
   
  if(key == 'a' || key == 'e' || key == 'ı' || 
  key == 'i' || key == 'o' || key == 'ö' ||
  key == 'u' || key == 'ü') {
    keyInput = str(key);
    bgCl = color(random(0,255),random(0,255),random(0,255));
  }else{
   keyInput = "Not allowed"; 
   bgCl = color(200,0,0);
  }
  
   
   
}

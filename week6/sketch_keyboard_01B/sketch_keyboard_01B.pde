String input = "";
color bgColor = color(255,255,255);

void setup() {
  size(600,600);
  
}

void draw() {
  background(bgColor);
  
  fill(0,0,0);
  textAlign(CENTER);
  textSize(40);
  text(input, width*0.5, height*0.5);
}

void keyPressed() {
  //println(key);
  if(key == 'e' || key == 'a' || key == 'ı'
  || key == 'i' || key == 'o' || key == 'ö'
  || key == 'u' || key == 'ü') {
    input = "SUCCESS\n" + str(key);
    bgColor = color(random(0,255),random(0,255),random(0,255));
  }else{
    bgColor = color(200,0,0);
   input = "YOU FAIL!!!"; 
  }
  
}

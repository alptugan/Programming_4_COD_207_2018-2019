PImage btnOn;
PImage btnOff;

float btnXPos;
float btnYPos;

boolean isClicked = false;

void setup() {
  size(600,600);
  
  btnOn = loadImage("btn_on.png");
  btnOff = loadImage("btn_off.png");
}


void draw() {
  background(255);
  
  btnXPos = width*0.5 - btnOff.width*0.5;
  btnYPos = height*0.5 - btnOff.height*0.5;
  
  if(isClicked == false) {
    image(btnOff,btnXPos, btnYPos);
  }else{
    image(btnOn,btnXPos, btnYPos);
  }
  
  
  
}

void mousePressed() {
  
  if(mouseX > btnXPos && mouseX < btnXPos + btnOff.width &&
  mouseY > btnYPos && mouseY < btnYPos + btnOff.height
  ) {
    println("hit SUCCESS");
    isClicked = !isClicked;
  }else{
    println("hit failed");
    
  }
  
}

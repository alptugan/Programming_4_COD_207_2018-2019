PImage btnOn;

float btnXPos;
float btnYPos;

boolean isClicked = false;

void setup() {
  size(600, 600);

  btnOn = loadImage("btn_on.png");
}


void draw() {
  background(255);

  btnXPos = width*0.5 - btnOn.width*0.5;
  btnYPos = height*0.5 - btnOn.height*0.5;
  
  if(isClicked == false) {
    image(btnOn, btnXPos, btnYPos);
  }
  
}

void mousePressed() {
  
  if(mouseX > btnXPos && mouseX < btnXPos + btnOn.width && 
  mouseY > btnYPos && mouseY < btnYPos + btnOn.height) {
    isClicked = true;
  }
}

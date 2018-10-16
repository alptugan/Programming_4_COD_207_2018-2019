int xPos = 0; // x position
int yPos = 0; // y position

int w    = 40; // width of the each shape
int h    = 40; // height of the each shape

void setup() {
  
  size(600,600);
}

void draw() {
  background(255);

  rect(xPos,yPos,w,h);
  rect(xPos,yPos + h,w,h);
  rect(xPos,yPos + h*2,w,h);
  rect(xPos,yPos + h*3,w,h);
  rect(xPos,yPos + h*4,w,h);
  rect(xPos,yPos + h*5,w,h);
  rect(xPos,yPos + h*6,w,h);
  rect(xPos,yPos + h*7,w,h);
  rect(xPos,yPos + h*8,w,h);
  rect(xPos,yPos + h*9,w,h);
}

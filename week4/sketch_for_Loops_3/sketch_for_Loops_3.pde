int rSize;
int rPosX;
int rPosY;

int numberOSquares = 5;

void setup() {
  
  size(600,600);
  background(255);
  
  // size of each square
  rSize = height / numberOSquares;
  //println(rSize);
}

void draw() {
  for(int i = 0; i < numberOSquares; i = i + 1){
    rPosX = width/2 - rSize/2;
    rPosY = i * rSize;
    rect(rPosX,rPosY,rSize,rSize);
  }
}

int numRect = 20;
int rSize;
int xPos;
int yPos;

void setup() {
  size(400, 400);
  background(255);


  rSize = height / numRect;
  xPos = (width / 2) - (rSize / 2);
}

void draw() {

  // i++ means i = i + 1
  for (int i = 0; i < numRect; i++) {
    // If i is an even number
    if (i % 2 == 0) {
      yPos = i * rSize;
      xPos = (width / 2) - (rSize / 2);
    }else{
      yPos = i * rSize;
      xPos = (width / 2);
    }

    rect(xPos, yPos, rSize, rSize);
  }
}

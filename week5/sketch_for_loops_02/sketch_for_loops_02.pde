void setup() {

  size(1200, 900);
  background(0);
  smooth();
  noStroke();
}

void draw() {

  for (int y = 0; y <= height; y += 40) {
    for (int x = 0; x <= width; x += 40) {
      fill(255, 140);
     // ellipse(x, y, 40, 40);
      rect(x,y,20,20);
    }
  }
}

void keyPressed() {
  
  if(key == 's') {
     saveFrame("myWallpaper-######.png"); 
  }
}

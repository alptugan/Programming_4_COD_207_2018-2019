void setup() {
  // Set background color to red
  //background(#ff0000);

  // Set background color to red
  // R, G, B, A
  background(10, 255, 200, 255);

  // sets the window size
  size(500, 500);
}

void draw() {

  // Draw ellipse to fixed position
  //ellipse(30, 30, 40, 40);

  // Draw ellipse and move it with cursor
  // ellipse(mouseX, mouseY, 40, 40);
  
  // change backgorund color via cursor position
  background(mouseX, mouseY, 100, 255);
}

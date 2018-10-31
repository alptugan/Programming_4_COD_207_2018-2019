float mappedVal;
float mappedValY;
float mappedCobined;
float sinAnim;
float cosAnim;

float xpos;
float ypos;
float w = 10;
float h = 10;

float level2;
float level2Mapped;
void setup() {
 size(600,600); 
}

void draw() {
  
  mappedVal = map(mouseX, 0, width, 0, 255);
  mappedValY = map(mouseY, 0, height, 0, 255);
  //mappedCobined = map((mappedVal+mappedValY), 0, 510, 0, 255);
  
  level2 = cos(millis()*0.003);
  level2Mapped = map(level2, -1, 1, -20, 20);
  
  sinAnim = sin(millis()*0.0022);
  cosAnim = cos(millis()*0.002);
  mappedCobined = map(sinAnim, -1, 1, 0, 255);
  
  
  //background(mappedVal, mappedValY, mappedCobined);
  
  xpos = map(cosAnim, -1, 1, 100, 500);
  ypos = map(sinAnim, -1, 1, 100, 500);
  
  fill(255,255,255,5);
  rect(0,0,width,height);
  
  fill(255,255,255,255);
  ellipse(xpos+level2Mapped, ypos-level2Mapped*0.02, w, h);
  
  //saveFrame("video/frame_######.jpg");
}

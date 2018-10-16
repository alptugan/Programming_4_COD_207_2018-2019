/* LIBRARIES */
import processing.video.*; //importing a special library to let Processing manage video

/* GLOBAL VARIABLES */
Capture video; // Use a capture object


/* METHODS */
void setup() {

  size(640, 480); // Size of the application window
  video = new Capture(this, width, height, 24); // initialize video variable
  video.start(); // Start capture

  background(0);
  noStroke();     // By default all of the shapes are drawn with strokes. We don't want to see strokes
  smooth();       // Makes drawings much more smoother
}


void draw() {
  if (video.available() == true) { // If there is a camera attached to computer
    video.read(); // then read the pixel data

    // this is a for loop which tells
    // how many dots are drawn before the screen redraws
    for (int i = 0; i < 40; i = i + 1) {
      int x = int(random(video.width));     //x value is a random location in width of video

      int y = int(random(video.height));    //y value is a random location in height of video

      color someColor = video.get(x, y);    //gets the color of the pixel at the x, y location
      fill(someColor);                      //uses that color as fill                      

      ellipse(x, y, 2, 2);                //draws a 20 pixel wide circle at that location

    }
  }
}

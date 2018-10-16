/* LIBRARIES */
import processing.video.*; //importing a special library to let Processing manage video

/* GLOBAL VARIABLES */
Capture video; // Use a capture object


/* METHODS */
void setup() {
  size(640,480); // Size of the application window
  video = new Capture(this, width, height, 24); // initialize video variable
  video.start(); // Start capture
  
}


void draw() {
  if(video.available() == true) { // If there is a camera attached to computer
    video.read(); // then read the pixel data
    image(video, 0,0); // draw the pixel data in to image variable, so we can see captured image on screen
  }
}

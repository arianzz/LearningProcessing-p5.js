// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-2: Manipulate video image

// Step 1. Import the video library
import processing.video.*;

Capture video;

function setup() {
  createCanvas(320, 240);
  video = new Capture(this, 320, 240);
  video.start();
}

function captureEvent(Capture video) {
  video.read();
}

function draw() {
  background(255);

  // Tinting using mouse location
  tint(mouseX, mouseY, 255);

  // A video image can also be tinted and resized just as with a PImage.
  image(video, 0, 0, mouseX, mouseY);
}


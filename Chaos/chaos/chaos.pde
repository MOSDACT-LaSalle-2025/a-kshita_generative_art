void setup() {
  size(600, 400); // Sets the window size
  background(0); // Sets the background to black
}

void draw() {
  // This code runs repeatedly
  stroke(random(255), random(255), random(255)); // Random color for the stroke
  strokeWeight(2); // Thickness of the lines
  line(pmouseX, pmouseY, mouseX, mouseY); // Draws a line from the previous mouse position to the current one
}

void mousePressed() {
  // When the mouse button is pressed, clear the background to a new random color
  background(random(255), random(255), random(255));
}

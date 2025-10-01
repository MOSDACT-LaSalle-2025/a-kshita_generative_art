PImage error;

void setup() {
  size(750, 750);
  background(0);
  error = loadImage("error.jpg");
}

void draw() {
  fill(0, 10);
   rect(0, 0, width, height);
  image(error,125,125);
}

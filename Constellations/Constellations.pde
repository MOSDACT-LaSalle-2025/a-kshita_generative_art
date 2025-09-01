int numStars = 150;
float[] x = new float[numStars];
float[] y = new float[numStars];

void setup() {
  size(800, 800);
  for (int i = 0; i < numStars; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
  background(0);
}

void draw() {
  noStroke();
  fill(0, 5);
  rect(0, 0, width, height);
  
  stroke(255, 150);
  for (int i = 0; i < numStars; i++) {
    for (int j = i+1; j < numStars; j++) {
      float d = dist(x[i], y[i], x[j], y[j]);
      if (d < 220 && random(1) < 0.0001) {
        line(x[i], y[i], x[j], y[j]);
      }
    }
  }
  
  noStroke();
  fill(255);
  for (int i = 0; i < numStars; i++) {
    ellipse(x[i], y[i], 2, 2);
  }
}

PImage tree;
PImage verde;
int countsframe = 1;

PImage snail;
PImage pepino;

PImage cow;
int currentScene = 1;

void setup() {
  size(650, 650);
  //fullScreen();
  tree = loadImage("vivid-blue-tree.png");
  verde = loadImage("pngtree-large-green.png");
  snail = loadImage("flying_snail.png");
  pepino = loadImage("snail-with-pepino.png");
  cow = loadImage("flying-cow.jpg");
  background(11, 54, 108);
  imageMode(CENTER);
  background(11, 54, 108);
}

void draw() {
  // fade out effect
  fill(11,54,108, 2);
  rect(0,0, 650,650);

  if(currentScene == 1){ // THE FOREST
    fill(47, 105, 247);
    noStroke();
    image(tree, random(0, width), random(400, 600), random(40, 200), random(90, 156));
    image(verde, random(0, width), random(400, 600), random(40, 200), random(90, 156));
  }
  if(currentScene == 2){ // THE COW
    image(cow,325,325, cow.width/12,cow.height/12); 
  }
  //saveFrame("screenshot#####.jpg");
  //countsframe = countsframe + 1;
  //if(countsframe > 100){
  //  noLoop();
  //}
}

void keyPressed() {
  if(key == '2'){
    currentScene = 2;
  }
  if(key == '1'){
    currentScene = 1;
  }
  if(key == 'b'){
    filter(INVERT);
  }
  if(key == 'o'){
    fill(255);
    circle(325,325,600);
  }
  if(key == 's'){
    save("screenshot.jpg");
  }
}

void mouseDragged(){
  image(snail, mouseX,mouseY);
}

void mousePressed(){
  image(pepino, mouseX,mouseY);  
}

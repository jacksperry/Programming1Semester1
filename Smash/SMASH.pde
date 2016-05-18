//Lines myLines1;
Lines[] myLines = new Lines[100];

void setup() {
  background(0);
  frameRate(30);
  size(displayWidth,displayHeight);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width),random(height),random(1,5),random(1,20));
  }
}

void draw() {
  if (frameCount == 1000) {
    frameCount = 0;
    background(random(2,20));
  } else {
    for (int i=0; i<myLines.length; i++) {
      myLines[i].display();
    }
  }
}
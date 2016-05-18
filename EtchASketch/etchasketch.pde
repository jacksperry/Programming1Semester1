int x, y;

void setup() {
  size(600, 600);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
}

void draw() {
  fill(255);
  drawName();
  noLoop();
}


// Algorithm for your first name
void drawName() {
  moveRight(3);
  moveDown(3);
  moveRight(4);
  moveDown(6);
  moveDownLeft(2);
  moveUpLeft(2);
  moveDownRight(2);
  moveUpRight(-2);
  moveUp(6);
  moveRight(8);
  moveDownLeft(4);
  moveUpRight(-2);
  moveRight(4);
  moveDownRight(2);
  moveUpLeft(4);
  moveRight(8);
  moveLeft(2);
  moveDown(4);
  moveRight(2);
  moveLeft(2);
  moveUp(4);
  moveRight(6);
  moveDown(6);
  moveUp(3);
  moveDownRight(3);
  moveUpLeft(3);
  moveUp(1);
  moveRight(1);
  moveUp(1);
  moveRight(1);
  moveUp(1);
  moveRight(1);
  moveUp(1);
  moveRight(1);
  moveUp(1);
  moveRight(1);





// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}

void moveDownLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y+i);
  }
  x=x-(10*rep);
  y=y+(10*rep);
}

void moveDownRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}

void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y-=(10*rep);
}

void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x-=(10*rep);
}

void moveUpLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y-i);
  }
  x-=(10*rep);
  y-=(10*rep);
}

void moveUpRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y+i);
  }
  x-=(10*rep);
  y+=(10*rep);
}
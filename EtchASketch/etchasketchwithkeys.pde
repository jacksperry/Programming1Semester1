int x, y;

void setup() {
  size(600,600);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
  strokeWeight(2);
  
}

void draw() {
  
}

void mouseClicked() {
  saveFrame("line-######.png");
}


void keyPressed() {
  if(key == CODED) {
    if(keyCode == RIGHT) {
      if(x>=width) {
        x=width;
      }
      moveRight(1);
    } else if (keyCode == DOWN) {
      if (y>height) {
        y=height ;
      }
      moveDown(1);
    } else if (keyCode == UP) {
      if(y>height) {
        y=height;
      }
      moveUp(1);
    } else if (keyCode == LEFT) {
      if(y>height) {
        y=height;
      }
      moveLeft(1);
    } else if (keyCode == LEFT) {
      if(y>height) {
        y=height;
      }
  }
}

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}

// Method to draw right line
void moveRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}

void moveDown(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y+i);
  }
  y=y+(10*rep);
}

void moveDownLeft(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y+i);
  }
  x=x-(10*rep);
  y=y+(10*rep);
  
}

void moveDownRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
  
}

void moveUp(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y-i);
  }
  y-=(10*rep);
  
}

void moveLeft(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y);
  }
  x-=(10*rep);
  
}

void moveUpLeft(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y-i);
  }
  x-=(10*rep);
  y-=(10*rep);
  
}

void moveUpRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y+i);
  }
  x-=(10*rep);
  y+=(10*rep);
  
}
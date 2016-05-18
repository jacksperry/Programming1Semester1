class Lines {
  //class variables
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  // constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointCount = tempLength;
  }
  //display
  void display() {
    strokeW = random(1, 2);
    pointCount = random(1, 50);
    //stroke(random(100,255));
    stroke(random(200),random(100),random(10));
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>88) {
        strokeWeight(strokeW);
        moveLeft(xpos,ypos,pointCount);
      } else if (random(100)>76) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, pointCount);
      } else if (random(100)>64) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, pointCount);
      } else if (random(100)>52) {
        strokeWeight(strokeW);
        moveUpRight(xpos, ypos, pointCount);
      } else if (random(100)>40) {
        strokeWeight(strokeW);
        moveDownRight(xpos, ypos, pointCount);
      } else if (random(100)>38) {
        strokeWeight(strokeW);
        moveLeftDown(xpos, ypos, pointCount);
      } else if (random(100)>26) {
        strokeWeight(strokeW);
        moveUpLeft(xpos, ypos, pointCount);
      } else {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, pointCount);
      }
    }
  }
void moveRight(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX+i, startY);
    xpos = startX + i;
    ypos = startY;
  }
}
void moveLeft(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX-i, startY);
    xpos = startX - i;
    ypos = startY;
  }
}
void moveUp(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX, startY+i);
    xpos = startX;
    ypos = startY + i;
  }
}
void moveDown(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX, startY-i);
    xpos = startX;
    ypos = startY - i;
  }
}
void moveUpRight(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX+i, startY+i);
    xpos = startX + i;
    ypos = startY + i;
  }
}
void moveDownRight(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX+i, startY-i);
    xpos = startX + i;
    ypos = startY - i;
  }
}
void moveLeftDown(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX+i, startY-i);
    xpos = startX - i;
    ypos = startY - i;
}
}

void moveUpLeft(float startX, float startY, float moveCount) {
  for(float i=0; i<moveCount; i++) {
    point(startX+i, startY+i);
    xpos = startX - i;
    ypos = startY + i;
    
  }
}
}
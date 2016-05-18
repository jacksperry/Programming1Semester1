class CalcButton {
  //class variable
  boolean isNum, isSp, overBox;
  float numVal, x, y;
  String opVal, spVal;
  int bSize, w, h;


  //constructor for number
  CalcButton(float x, float y) {
    this.x = x;
    this.y = y;
  }
  //constructor for oeprator
  CalcButton asNumber(float tempNumVal, int tempW, int tempH) {
    isNum = true;
    numVal = tempNumVal;
    w = tempW;
    h = tempH;
    return this;
  }
  //constructor for special bnutton
  CalcButton asOperator(String tempOpVal, int tempW, int tempH) {
    opVal = tempOpVal;
    w = tempW;
    h = tempH;
    return this;
  }
  CalcButton asSpecial(String tempspVal, int tempW, int tempH) {
    spVal = tempspVal;
    w = tempW;
    h = tempH;
    isSp = true;
    return this;
  }

  void display() {
    if (isNum) {
      if (overBox) {
        fill(75);
      } else {
        fill(200);
      }
      stroke(0);
      rect(x, y, w, h);
      fill(0);
      textSize(24);
      text(int(numVal), x+15, y+30);
    } else if (isSp) {
      fill(200);
      stroke(0);
      rect(x, y, w, h);
      fill(0);
      textSize(24);
      text(spVal, x+15, y+30);
    } else {
      if (overBox) {
        fill(125);
      } else {
        fill(200);
      }
      stroke(0);
      rect(x,y,w,h);
      fill(0);
      textSize(24);
      text(opVal, x+15, y+30);
    }
  }  

  void click(int xpos, int ypos) {
      overBox = xpos > x && xpos < x+w && ypos>y && ypos<y+h;
    }
  }
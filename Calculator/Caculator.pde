CalcButton[] numButtons = new CalcButton[10];
CalcButton[] opButtons = new CalcButton[6];
CalcButton[] spButtons = new CalcButton[1];


String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0;
char opValue;
boolean firstNum;


void setup() {
  size(265, 300);
  background(50, 55, 55);
  noFill();
  strokeWeight(3);
  stroke(200);
  rect(1, 1, 337, 327);
  int a=0;
  while (a<numButtons.length)
  {
    numButtons[a] = new CalcButton(0, 0).asNumber(a, 0, 0);
    a++;
  }
  numButtons[0] = new CalcButton(60, 250).asNumber(0, 45, 45);
  numButtons[1] = new CalcButton(10, 200).asNumber(1, 45, 45);
  numButtons[2] = new CalcButton(60, 200).asNumber(2, 45, 45);
  numButtons[3] = new CalcButton(110, 200).asNumber(3, 45, 45);
  numButtons[4] = new CalcButton(10, 150).asNumber(4, 45, 45);
  numButtons[5] = new CalcButton(60, 150).asNumber(5, 45, 45);
  numButtons[6] = new CalcButton(110, 150).asNumber(6, 45, 45);
  numButtons[7] = new CalcButton(10, 100).asNumber(7, 45, 45);
  numButtons[8] = new CalcButton(60, 100).asNumber(8, 45, 45);
  numButtons[9] = new CalcButton(110, 100).asNumber(9, 45, 45);
  opButtons[0] = new CalcButton(160, 250).asOperator("+", 45, 45);
  opButtons[1] = new CalcButton(160, 200).asOperator("-", 45, 45);
  opButtons[2] = new CalcButton(210, 250).asOperator("=", 45, 45);
  opButtons[3] = new CalcButton(110, 50).asOperator("C", 45, 45);
  opButtons[4] = new CalcButton(160, 150).asOperator("*", 45, 45);
  opButtons[5] = new CalcButton(160, 100).asOperator("/", 45, 45);
  spButtons[0] = new CalcButton(210, 200).asSpecial(".", 45, 45);


  firstNum = true;
}

void draw() {
  background(100, 200, 255);
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].click(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].click(mouseX, mouseY);
  }
  for (int i=0; i<spButtons.length; i++) {
    spButtons[i].display();
    spButtons[i].click(mouseX, mouseY);
  }

  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].click(mouseX, mouseY);
    if (numButtons[i].overBox) {
      if (firstNum) {
        valueToCompute += int(numButtons[i].numVal);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(numButtons[i].numVal);
        displayValue = valueToCompute2;
      }
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].click(mouseX, mouseY);
    if (opButtons[i].overBox) {
      if (opButtons[i].overBox) {
        if (opButtons[i].opVal == "C") {
          displayValue = "0";
          opValue = 'C';
          valueToCompute = "";
          valueToCompute2 = "";
          valueToComputeI = 0;
          valueToComputeI = 0;
          result = 0;
          firstNum = true;
        } else if (opButtons[i].opVal == "=") {
          firstNum = true;
          performCalculation();
        } else if (opButtons[i].opVal == "+") {
          if (result != 0) {
            opValue = '+';
            valueToCompute2 = "";
            firstNum = false;
            displayValue = "+";
          } else {
            opValue = '+';
            firstNum = false;
            displayValue = "+";
          }
        } else if (opButtons[i].opVal == "-") {
          if (result != 0) {
            opValue = '-';
            valueToCompute2 = "";
            firstNum = false;
            displayValue = "-";
          } else {
            opValue = '-';
            firstNum = false;
            displayValue = "-";
          }
        } else if (opButtons[i].opVal == "*") {
          if (result != 0) {
            opValue = '*';
            valueToCompute2 = "";
            firstNum = false;
            displayValue = "*";
          } else {
            opValue = '*';
            firstNum = false;
            displayValue = "*";
          }
        } else if (opButtons[i].opVal == "/") {
          if (result != 0) {
            opValue = '/';
            valueToCompute2 = "";
            firstNum = false;
            displayValue = "/";
          } else {
            opValue = '/';
            firstNum = false;
            displayValue = "/";
          }
        }
      }
    }
  }

  for (int i=0; i<spButtons.length; i++) {
    spButtons[i].click(mouseX, mouseY);
    if (spButtons[i].overBox && firstNum == true) {
      valueToCompute += spButtons[i].spVal;
      displayValue = valueToCompute;
    } else if (spButtons[i].overBox && firstNum == false) {
      valueToCompute2 += spButtons[i].spVal;
      displayValue = valueToCompute2;
    }
  }
}

//for (int i=0; i<opButtons.length; i++) {
//op//Buttons[i].click(mouseX, mouseY);
//if// (opButtons[i].overBox) {
//if(opButtons[i].opVal == "+") {
//  if (result != 0){
//    opValue = '+';
//    valueToCompute2 = "";
//    firstNum = false;
//    displayValue = "+";
//  } else {
//    opValue ='+';
//    firstNum = false;
//    displayValue = "+";


//else if (isSpecial) {
//     fill(133);
//     stroke(0);
//     strokeWeight(2);
//     rect(xpos,ypos,boxSize,boxSize,10);
//     fill(0);
//     textSize(24);
//     text(spButtonValue, xpos+15, ypos+30);



void performCalculation() {
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);
  if (opValue == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '-') {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '*') {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '/') {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  }
}

void updateDisplay() {
  fill(100, 200, 150);
  rect(10, 10, 230, 35, 7);
  fill(0);
  textSize(25);
  text(displayValue, 20, 37);
}


//if (firstNum) {
//  valueToCompute = displayValue;
//} else {
//  valueToCompute = displayValue;
//  valueToCompute2 = "";
//}  
//if (opValue == 'n') {
//  if (firstNum) {
//    valueToComputeI = valueToComputeI*-1;
//    displayValue = str(valueToComputeI);
//  } else {
//    valueToComputeI2 = valueToComputeI2*-1;
//    displayValue = str(valueToComputeI);
//  }
//}
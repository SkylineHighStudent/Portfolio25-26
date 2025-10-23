// Claire Danzig | 25 Sep 2025 | Calculator

//Button to do list/problems to solve.
//make ANS button work (listed as k)
//make C button clear just one entry, not all of it

Button[] buttons = new Button[13];
Button[] numButtons = new Button[10];

float l, r, result;
boolean left;
String dVal;
String op;

void setup() {
  size(165, 160);
  background(#FCFAA6);
  textSize(15);
  left = true;
  l = 0;
  r = 0;
  result = 0;
  dVal = "0";
  op = "";
  numButtons[0] = new Button(70, 140, 20, 20, '0', #FAB1F5, #E09CDC, true);
  numButtons[1] = new Button(70, 65, 20, 20, '1', #36B7E8, #33A2C9, true);
  numButtons[2] = new Button(95, 65, 20, 20, '2', #36B7E8, #33A2C9, true);
  numButtons[3] = new Button(120, 65, 20, 20, '3', #36B7E8, #33A2C9, true);
  numButtons[4] = new Button(70, 90, 20, 20, '4', #D391F0, #C778ED, true);
  numButtons[5] = new Button(95, 90, 20, 20, '5', #D391F0, #C778ED, true);
  numButtons[6] = new Button(120, 90, 20, 20, '6', #D391F0, #C778ED, true);
  numButtons[7] = new Button(70, 115, 20, 20, '7', #92DE80, #81BF72, true);
  numButtons[8] = new Button(95, 115, 20, 20, '8', #92DE80, #81BF72, true);
  numButtons[9] = new Button(120, 115, 20, 20, '9', #92DE80, #81BF72, true);
  buttons[0] = new Button(20, 65, 20, 20, 'n', #36B7E8, #33A2C9, true); //ans
  buttons[1] = new Button(20, 90, 20, 20, 'x', #D391F0, #C778ED, true);
  buttons[2] = new Button(20, 115, 20, 20, '√', #92DE80, #81BF72, true);
  buttons[3] = new Button(20, 140, 20, 20, 'π', #FAB1F5, #E09CDC, true);
  buttons[4] = new Button(45, 65, 20, 20, 'A', #E33072, #C62E69, true);
  buttons[5] = new Button(45, 90, 20, 20, 'C', #E33072, #C62E69, true);
  buttons[6] = new Button(45, 115, 20, 20, '±', #92DE80, #81BF72, true);
  buttons[7] = new Button(45, 140, 20, 20, '.', #FAB1F5, #E09CDC, true);
  buttons[8] = new Button(145, 140, 20, 20, '+', #FAB1F5, #E09CDC, true);
  buttons[9] = new Button(145, 65, 20, 20, '÷', #36B7E8, #33A2C9, true);
  buttons[10] = new Button(145, 90, 20, 20, '×', #D391F0, #C778ED, true);
  buttons[11] = new Button(145, 115, 20, 20, '-', #92DE80, #81BF72, true);
  buttons[12] = new Button(107, 140, 45, 20, '=', #E33072, #C62E69, false);
  dVal = "0";
}

void draw() {
  background(#FCFAA6);
  updateDisplay();
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  text("a s", 19,62); //text overlay for ans button
  text("²", 25,87); //text overlay for square button
}

void mousePressed() {

  // not number buttons (SMOOOOOTH OPERATOOORRSSSSS)
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].hover && buttons[i].val == '+') {
      left = false;
      op = "+";
      dVal = "0";
    } else if (buttons[i].hover && buttons[i].val == '-') {
      left = false;
      op = "-";
      dVal = "0";
    } else if (buttons[i].hover && buttons[i].val == '×') {
      left = false;
      op = "×";
      dVal = "0";
    } else if (buttons[i].hover && buttons[i].val == '÷') {
      left = false;
      op = "÷";
      dVal = "0";
    } else if (buttons[i].hover && buttons[i].val == '=') {
      performCalculation();
    } else if (buttons[i].hover && buttons[i].val == 'π') {
      if(left){
      l = PI;
      dVal = str(l);
    } else {
      r = PI;
      dVal= str(r);
    }
    } else if (buttons[i].hover && buttons[i].val == '^') { // square
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(r);
        dVal = str(r);
      }
     } else if (buttons[i].hover && buttons[i].val == '√') { //square root
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
       } else if (buttons[i].hover && buttons[i].val == '.') { //change this to decimal code
      if (dVal.contains(".") == false) {
       dVal += ".";
      }
    } else if (buttons[i].hover && buttons[i].val == 'A') {
      left = true;
      l = 0;
      r = 0;
      result = 0;
      dVal = "0";
      op = "";
    } else if (buttons[i].hover && buttons[i].val == '±') {
      if (left) {
        l = l*-1;
        dVal = str(l);
      } else {
        r = r*-1;
        dVal = str(r);
      }
    } else if (buttons[i].hover && buttons[i].val == 'C') {
      left = true;
      l = 0;
      r = 0;
      result = 0;
      dVal = "0";
      op = "";
    }
  }
  //number buttons, ALL
  for (int i = 0; i<numButtons.length; i++) {
    if (numButtons[i].hover(mouseX, mouseY) && left) {
      if (dVal.equals("0")) {
        dVal = str(numButtons[i].val);
        l = float(dVal);
      } else {
        dVal += str(numButtons[i].val);
        l = float(dVal);
      }
    } else if (numButtons[i].hover && !left) {
      if (dVal.equals("0")) {
        dVal = str(numButtons[i].val);
        r = float(dVal);
      } else {
        dVal += str(numButtons[i].val);
        l = float(dVal);
      }
    }
  }
  //println("L;" + l);
  println("R;" + r);
  println("Result:" + result);
  println("OP:" + op);
  println("Left:" + left);
}
void updateDisplay() {
  rectMode(CORNER);
  strokeWeight(0);
  fill(#EAC436);
  rect(5, 5, 155, 40, 5);
  rect(5, 50, 155, 105, 5);
  fill(#FFFFFF);
  rect(10, 10, 145, 30, 5);
  textSize(40);
  textAlign(RIGHT);
  if(dVal.length()>7) {
    textSize(30);
  } 
  if(dVal.length()>9) {
    textSize(20);
  }
  if(dVal.length()>14) {
    textSize(10);
  }
  if(dVal.length()>29) {
    textSize(1);
  }
  fill(0);
  text(dVal, width-10, 38);
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("×")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  }
  dVal = str(result);
  left = true;
  l = result;
}

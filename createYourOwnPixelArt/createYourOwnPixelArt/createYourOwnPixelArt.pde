color pink = color(255, 0, 255);
color red = color(255, 0, 0);
color orange = color(255, 128, 0);
color yellow = color(255, 255, 0);
color lightGreen = color(0, 255, 0);
color darkGreen = color(0, 153, 0);
color lightBlue = color(0, 255, 255);
color darkBlue = color(0, 0, 255);
color purple = color(127, 0, 255);
color gray = color(128, 128, 128);
color select;

int x, y;

void setup() {
  size(1200, 1000);
  background(255);
  blankBoard();
  noStroke();
  colors();
}

void draw() {
  selectColor(x, y);
  fillColor(x, y, select);
  
}

void blankBoard() {
  stroke(150);
  for (int i=0; i<=1000; i+=25) {
    for (int j=0; j<=1000; j+=25) {
      rect(i, j, 25, 25);
    }
  }
}

void colors() {
  fill(pink);
  rect(1075, 275, 50, 50);
  fill(red);
  rect(1125, 275, 50, 50);
  fill(orange);
  rect(1075, 325, 50, 50);
  fill(yellow);
  rect(1125, 325, 50, 50);
  fill(lightGreen);
  rect(1075, 375, 50, 50);
  fill(darkGreen);
  rect(1125, 375, 50, 50);
  fill(lightBlue);
  rect(1075, 425, 50, 50);
  fill(darkBlue);
  rect(1125, 425, 50, 50);
  fill(purple);
  rect(1075, 475, 50, 50);
  fill(gray);
  rect(1125, 475, 50, 50);
}

public color selectColor(int x, int y) {
  if (x > 1075 && x < 1125) {
    if (y > 275 && y < 325)
      select=pink;
    else if (y > 325 && y < 375)
      select=orange;
    else if (y > 375 && y < 425)
      select=lightGreen;
    else if (y > 425 && y < 475)
      select=lightBlue;
    else if (y > 475 && y < 525)
      select=purple;
  }
  else if (x > 1125 && x < 1175) {
    if (y > 275 && y < 325)
      select=red;
    else if (y > 325 && y < 375)
      select=yellow;
    else if (y > 375 && y < 425)
      select=darkGreen;
    else if (y > 425 && y < 475)
      select=darkBlue;
    else if (y > 475 && y < 525)
      select=gray;
  }
  return select;
}

void fillColor(int x, int y, color c) {
  for (int i=0; i<=1000; i+=25) {
    for (int j=0; j<=1000; j+=25) {
      if ((x > i && x < i+25) && (y > j && y < j+25)) {
        fill(c);
        rect(i, j, 25, 25);
      }
    }
  }
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
  select=selectColor(x, y);
  if (mouseButton == LEFT) {
    noStroke();
    fillColor(x, y, select);
  }
  else if (mouseButton == RIGHT) {
    stroke(150);
    select=color(255);
    fillColor(x, y, select);
  }
  
}
